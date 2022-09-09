//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
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

