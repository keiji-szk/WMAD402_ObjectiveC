//
//  Dice.m
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-05.
//

#import "Dice.h"

@implementation Dice
- (instancetype)init{
	self = [super init];
	if (self) {
		[self roll];
	}
	return self;
}

-(void)roll{
	_value = arc4random_uniform(6) + 1;
}
@end
