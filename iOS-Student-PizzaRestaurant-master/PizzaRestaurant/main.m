//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "Kitchen.h"
#import "ManagerPicky.h"
#import "ManagerCheery.h"

NSString* inputForPrompt(NSString * msg) {
	NSLog(@"%@", msg);
	char inputChars[255];
	fgets(inputChars, 255, stdin);
	NSCharacterSet *dontWantChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
	return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:dontWantChar];
};

NSObject<KitchenDelegate>* selectManager(){
	
	static ManagerPicky* mPickey = nil;
	static ManagerCheery* mCheery = nil;
	NSString* managerString = inputForPrompt(@"Select manager. 1:picky, 2:cheery, other:no manager >");
	
	NSInteger selNum = [managerString integerValue];
	if (selNum == 1){
		if(!mPickey){
			mPickey = [[ManagerPicky alloc] init];			
		}
		NSLog(@"Pickey manager was selected");
		return mPickey;
	}else if (selNum == 2){
		if(!mCheery){
			mCheery = [[ManagerCheery alloc] init];			
		}
		
		NSLog(@"Cheery manager was selected");
		NSString* ans = inputForPrompt(@"Do you want to use delivery service?(y/n) >");
		if([ans isEqual:@"y"]){
			static DeliveryService* delService = nil;
			if (!delService){
				delService = [[DeliveryService alloc] init];				
			}
			[mCheery setDeliveryService:delService]; 
			NSLog(@"Delivery service was selected");
		}else{
			[mCheery setDeliveryService:nil];
			NSLog(@"Delivery service was not selected");
		}
		return mCheery;
	}else {
		NSLog(@"Manager was not selected");
	}
	return nil;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];		
        while (TRUE) {
            // Loop forever
			NSObject<KitchenDelegate>* manager = selectManager();
			[restaurantKitchen setDelegate:manager];			
			
			NSString* inputString = inputForPrompt(@"Please pick your pizza size and toppings:");
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
			Pizza* pizza = [restaurantKitchen order:commandWords];
			if (!pizza){
				NSLog(@"Fail to make pizza. Sorry.");
				continue;
			}
			
//			NSLog(@"pizza size is: %@", pizza.size); // pizza.size outputs NSString though it's Int value. Why?
			NSLog(@"pizza size is: %@", [pizza getSizeString]); 
			NSLog(@"pizza toppings are: %@",  [[pizza.topping valueForKey:@"description"] componentsJoinedByString:@"/"]);
        }

    }
    return 0;
}

