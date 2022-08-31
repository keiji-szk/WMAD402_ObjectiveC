//
//  main.m
//  Lab1
//
//  Created by 鈴木啓司 on 2022-08-30.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		while(true) {
			printf("Choose the number \n1. Uppercase \n2. Lowercase \n3. Numberize \n4. Canadianize \n5. Respond \n6. De-Space-It \n");
			
			char inputNumChar[255];
			fgets(inputNumChar, 255, stdin);
			int inputNum = atoi(inputNumChar);
			
			fflush(stdin);
			
			// 255 unit long array of characters
			char inputChars[255];

			printf("Input a string:\n");
			// limit input to max 255 characters
			fgets(inputChars, 255, stdin);
			
			// convert char array to an NSString object
			NSString *inputString = [NSString stringWithUTF8String:inputChars];
			
			if (inputNum == 1) {
				NSString* upperString = [inputString uppercaseString];
				printf("\n%s\n", [upperString UTF8String]);
			} 
			else if (inputNum == 2){
				NSString* lowerString = [inputString lowercaseString]; 
				printf("\n%s\n", [lowerString UTF8String]);
			}
			else if (inputNum == 3){
				int res = [inputString intValue]; 
				if (res == 0 && ![inputString isEqualToString:@"0"]){
					printf("\nInvalid string\n");
				}else {
					printf("\n%d\n", res);
//					NSLog(@"\n%d\n", res);				
				}
			}
			else if (inputNum == 4){
				NSMutableString* canadaString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
				canadaString = [canadaString stringByAppendingString:@", eh?\n"];
				printf("\n%s\n", [canadaString UTF8String]);
			}
			else if (inputNum == 5){
				if ([inputString hasSuffix:@"?\n"]) {
					printf("\nI don't know.\n\n");
				}else if ([inputString hasSuffix:@"!\n"]){
					printf("\nWhoa, calm down!\n\n");
				}else {
					printf("\n　・・・ \n");					
				}
			}
			else if (inputNum == 6){
				NSString* replaceString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
				printf("\n%s\n", [replaceString UTF8String]);				
			}
			else {
				NSLog(@"Invalid Value");
			}
		}
		
		
		

//		// print as a c string
//		printf("Your string is %s\n", inputChars);
//
//
//		// print NSString object
//		NSLog(@"Input was: %@", inputString);
		
	}
	return 0;
}
