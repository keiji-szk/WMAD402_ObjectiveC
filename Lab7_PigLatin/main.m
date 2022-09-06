//
//  main.m
//  Lab7_PigLatin
//
//  Created by 鈴木啓司 on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "NSString+stringByPigLatinization.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		InputCollector * ic = [[InputCollector alloc] init];
		while (YES) {
			NSString* str = [ic imputForPrompt:@"Input word:"];
			NSString* res = [str stringByPigLatinization];
			NSLog(res);
		}		
	}
	return 0;
}
