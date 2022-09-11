//
//  ManagerCheery.m
//  PizzaRestaurant
//
//  Created by 鈴木啓司 on 2022-09-11.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "ManagerCheery.h"

@implementation ManagerCheery
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings{
	return TRUE;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
	NSLog(@"I'll update pizza size to Large for you!");
	return TRUE;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
	if (_deliveryService) {
		[_deliveryService deliverPizza:pizza];
	}else {
		NSLog(@"Delicious pizza! Bon appetit!");		
	}
	
	
}

@end
