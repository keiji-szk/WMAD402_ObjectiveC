//
//  QuestionManager.m
//  Lab4
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init{
	self = [super init];
	if (self) {
		_questions = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)addQuestions:(Question *)question{
	[_questions addObject:question];
}

-(NSString*) timeOutput{
	NSTimeInterval totalTime = 0;
	NSInteger qCount = [_questions count];
	for (id q in _questions) {
		totalTime += [q answerTime];
	}
	NSInteger averageTime = totalTime / qCount;
	
	return [NSString stringWithFormat:@"total time: %lds, avarage time: %lds\n", (long)totalTime, (long)averageTime];
}

@end
