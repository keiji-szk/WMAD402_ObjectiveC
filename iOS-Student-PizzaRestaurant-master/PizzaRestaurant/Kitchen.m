//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)order:(NSArray*)commandWords{
	
	if ([commandWords count] == 1 &&
		[commandWords[0] isEqualToString:@"pepperoni"]) {
		return [Pizza largePepperoni];		
	}
	
	PizzaSize size;
	if([commandWords[0] isEqualToString:@"small"]) {
		size = SMALL;
	}else if([commandWords[0] isEqualToString:@"medium"]) {
		size = MEDIUM;
	}else if([commandWords[0] isEqualToString:@"large"]){
		size = LARGE;
	}else {
		NSLog(@"Invalid size");
		return nil;
	}
	
	NSRange range;
	range.location = 1;
	range.length = [commandWords count] - 1;
	NSArray *topping = [commandWords subarrayWithRange:range];
	return [self makePizzaWithSize:size toppings:topping];
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
{
	Pizza* res = nil;
	if (_delegate){
		if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
			return nil;
		}
		
		if([_delegate kitchenShouldUpgradeOrder:self]){
			res = [[Pizza alloc] initWithSize:LARGE andTopping:toppings];
		}
	}
	
	if (res == nil){
		res = [[Pizza alloc] initWithSize:size andTopping:toppings];
	}
	
	if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:) ]){
		[_delegate kitchenDidMakePizza:res];
	}
	
	return res;
}

@end
