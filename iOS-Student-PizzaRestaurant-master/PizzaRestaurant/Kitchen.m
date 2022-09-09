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
	return [self makePizzaWithSize:commandWords[0] toppings:topping];
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
{
	return [[Pizza alloc] initWithSize:size andTopping:toppings];
}

@end
