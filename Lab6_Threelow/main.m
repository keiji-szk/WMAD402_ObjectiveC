//
//  main.m
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-05.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		Dice* dice = [[Dice alloc] init];
		
		while(true) {			
			NSLog(@"%d", dice.value);
			
			NSString* userInput = [InputHandler getUserInput];
			if ([userInput isEqualToString:@"roll"]){
				[dice roll];
				continue;
			}else{
				break;
			}
		}
	}
	return 0;
}
