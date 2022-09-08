//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "FriendlyGreetingDecider.h"
#import "Greeter.h"
#import "Cook.h"
#import "CookAwsome.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//		Greeter* greeter = [[Greeter alloc] init];
//		FriendlyGreetingDecider* fgd = [[FriendlyGreetingDecider alloc] init];
//		[greeter setDelegate:fgd];
//		[greeter sayHello];
		
		Cook *cook = [[Cook alloc] init];
		CookAwsome * cookA = [[CookAwsome alloc] init];
		
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
		[truckA setDelegate:cook];
		[truckB setDelegate:cookA];
		
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
