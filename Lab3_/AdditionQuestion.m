//
//  AdditionQuestion.m
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import "AdditionQuestion.h"



@implementation AdditionQuestion

- (instancetype)init {
	if (self = [super init]) {
		NSInteger left = arc4random_uniform(90) + 10;
		NSInteger right = arc4random_uniform(90) + 10;		
		
		_question = [NSString stringWithFormat:@"%d + %d?\n", left, right];
		_answer = left + right;
	}
	return self;
}

@end
