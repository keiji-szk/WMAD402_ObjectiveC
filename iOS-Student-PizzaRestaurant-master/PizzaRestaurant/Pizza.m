//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by 鈴木啓司 on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype)initWithSize:(PizzaSize)size andTopping:(NSArray*) topping{
	self = [super init];
	if (self) {
		_size = size;
		_topping = topping;
	}
	return self;
}

+(Pizza *)largePepperoni{
	return [[Pizza alloc] initWithSize:LARGE andTopping:@[@"pepper", @"pineapple", @"meat"]];
}

-(NSString *)getSizeString{
	switch (_size) {
		case SMALL:
			return @"SMALL";
			break;
		case MEDIUM:
			return @"MEDIUM";
			break;
		case LARGE:
			return @"LARGE";
			break;
		default:
			return nil;
	}
}


@end
