//
//  AdditionQuestion.m
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import "Question.h"



@implementation Question

- (instancetype)init {
	if (self = [super init]) {
		_rightValue = arc4random_uniform(90) + 10;
		_leftValue = arc4random_uniform(90) + 10;		
//		[self generateQuestion];		
		_startTime = [NSDate date];
	}
	return self;
}

// overriding getter
- (NSInteger) answer {
	_endTime = [NSDate date];
	return _answer;
}

- (NSTimeInterval)answerTime{
	return [_endTime timeIntervalSinceDate:_startTime];
}

-(void)generateQuestion{
}

@end
