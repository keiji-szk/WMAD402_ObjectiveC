//
//  InputHandler.m
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput{	
	char inputChars[255];
	fgets(inputChars, 255, stdin);
	NSCharacterSet *dontWantChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
	return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:dontWantChar];
}

- (NSString *)getUserInput{
	return [InputHandler getUserInput];
}

@end
