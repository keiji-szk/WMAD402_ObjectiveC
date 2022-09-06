//
//  Dice.m
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-05.
//

#import "Dice.h"

@interface Dice()
@property BOOL isHold;
@end



@implementation Dice

- (instancetype)init{
	self = [super init];
	if (self) {
		_isHold = false;
		[self roll];
	}
	return self;
}

-(void)roll{
	if (_isHold) {
		return;
	}
	_dValue = arc4random_uniform(6) + 1;
}

-(void)hold{
	_isHold = !_isHold;
}

-(void)reset{
	_isHold = NO;
	[self roll];
}

-(BOOL)isHold{
	return _isHold;
}

@end
