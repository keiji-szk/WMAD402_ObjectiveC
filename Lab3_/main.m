//
//  main.m
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-02.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h""

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		NSLog(@"MATH!");
		ScoreKeeper* sk = [[ScoreKeeper alloc] init];
		while(true){
			
			AdditionQuestion* q = [[AdditionQuestion alloc] init];		
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
		}		
	}
	return 0;
}
