//
//  Greeter.m
//  Foodtruck
//
//  Created by 鈴木啓司 on 2022-09-08.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

-(void)sayHello{
	if ([_delegate shouldSayHello]){
		printf("Hello\n");
	}else{
		printf("...\n");
	}
}

@end
