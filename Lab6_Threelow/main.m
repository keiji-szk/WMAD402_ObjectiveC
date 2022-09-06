//
//  main.m
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-05.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {		
		GameController* gc = [[GameController alloc] init];
		InputCollector* ic = [[InputCollector alloc] init];
		while(true) {			
			NSLog(@"Select command\n");
			NSLog(@"\'roll\'");
			NSLog(@"\'hold\'");
			NSLog(@"\'reset\'");
			[gc showDices];
			
			
			NSString* userInput = [InputHandler getUserInput];
			if ([userInput isEqualToString:@"roll"]){
				[gc roll];
			}else if ([userInput isEqualToString:@"hold"]){
				NSInteger selNum = [[ic imputForPrompt:@"Select index (1-5):"] intValue];
				if (selNum < 1 || 5 < selNum) {
					NSLog(@"Invalid value");
					continue;
				}
				[gc holdDie:selNum];
			}else if ([userInput isEqualToString:@"reset"]){
				
			}
			
			
		}
	}
	return 0;
}
