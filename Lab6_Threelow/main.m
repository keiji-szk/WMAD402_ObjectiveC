//
//  main.m
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-05.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		Dice* dice = [[Dice alloc] init];
		NSLog(@"%d", dice.value);
	}
	return 0;
}
