//
//  AdditionQuestion.m
//  Lab4
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
	if (self = [super init]) {
		[self generateQuestion];
	}
	return self;
}

-(void)generateQuestion{
	super.question = [NSString stringWithFormat:@"%d + %d?\n", super.leftValue, super.rightValue];
	super.answer = super.leftValue + super.rightValue;
}
@end
