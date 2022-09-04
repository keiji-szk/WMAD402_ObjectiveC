//
//  main.m
//  Lab4
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSLog(@"MATH!");
		QuestionManager* qm = [[QuestionManager alloc] init];
		QuestionFactory* qf = [[QuestionFactory alloc] init];
		ScoreKeeper* sk = [[ScoreKeeper alloc] init];
		
		while(true){
			
			Question* q = [qf generateRandomQuestion];		
			printf("%s", [[q question] UTF8String] );
			
			NSString *inputString = [InputHandler getUserInput];
			if ([inputString isEqualToString:@"quit"]){
				break;
			}
			
			NSInteger usrAnswer = [inputString intValue];
			if ([q answer] == usrAnswer) {
				printf("Right!\n");
				[sk addScore:true];
			}else{
				printf("Wrong!\n");
				[sk addScore:false];
			}
			
			[q answer];
			[qm addQuestions:q];
			NSLog(@"%@\n", [qm timeOutput]);
		}		
	}
	return 0;
}
