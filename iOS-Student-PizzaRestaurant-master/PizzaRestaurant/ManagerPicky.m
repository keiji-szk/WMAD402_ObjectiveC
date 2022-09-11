//
//  ManagerPicky.m
//  PizzaRestaurant
//
//  Created by 鈴木啓司 on 2022-09-11.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "ManagerPicky.h"

@implementation ManagerPicky

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings{
	if ([toppings containsObject:@"anchovies"]){
		NSLog(@"I don't want to make it with anchovies");
		return NO;
	}
	return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
	return NO;
}

@end
