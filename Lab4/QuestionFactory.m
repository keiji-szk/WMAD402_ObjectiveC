//
//  QuestionFactory.m
//  Lab4
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init{
	self = [super init];
	if (self) {
//		_questionSubclassNames = [[NSArray alloc] init];
		_questionSubclassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
	}
	return self;
}

-(Question *)generateRandomQuestion{
	NSInteger rdmNum = arc4random_uniform(4);
	return [[NSClassFromString(_questionSubclassNames[rdmNum]) alloc] init];
}
@end
