//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by 鈴木啓司 on 2022-09-11.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

NSString* inputForPrompt_(NSString * msg) {
	NSLog(@"%@", msg);
	char inputChars[255];
	fgets(inputChars, 255, stdin);
	NSCharacterSet *dontWantChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
	return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:dontWantChar];
};


@interface DeliveryService ()
@property (nonatomic, strong) NSMutableArray* deliveryHistory;
@property (nonatomic, strong) DeliveryCar* car;
@end


@implementation DeliveryService
-(instancetype)init {
	self = [super init];
	if (self) {
		_deliveryHistory = [NSMutableArray new];
		_car = [DeliveryCar new];
	}
	return self;
}

-(void)deliverPizza:(Pizza *)pizza{
	NSMutableString *str = [NSMutableString new];
	[str appendString:[pizza getSizeString]];
	[str appendString:@" "];
	[str appendString:[[pizza.topping valueForKey:@"description"] componentsJoinedByString:@"/"]];	
	[_car deliverPizza:pizza];
	[_deliveryHistory addObject:str];
	
	NSString* ans = inputForPrompt_(@"Do you want to show delivery history?(y/n) >");
	if ([ans isEqualToString:@"y"]){
		NSLog(@"\n%@", [[_deliveryHistory valueForKey:@"description"] componentsJoinedByString:@"\n"]);
	}
}

-(NSArray *)getDeliveryHistory{
	return [_deliveryHistory copy];
}

@end
