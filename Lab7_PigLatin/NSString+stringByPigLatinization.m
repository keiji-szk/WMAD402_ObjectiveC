//
//  NSString+stringByPigLatinization.m
//  Lab7_PigLatin
//
//  Created by 鈴木啓司 on 2022-09-06.
//

#import "NSString+stringByPigLatinization.h"

@implementation NSString (stringByPigLatinization)
-(NSString *)stringByPigLatinization{
	NSArray * words = [self componentsSeparatedByString:@" "];
	NSMutableString * res = [[NSMutableString alloc] init];
	for (int i = 0; i < [words count]; ++i) {
		NSString* word = words[i];
		NSRange range = [word rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"]];
		if (range.length == NSNotFound) {
			[res appendString:word];			
		}else {
			[res appendString:[word substringFromIndex:range.location]];
			[res appendString:[[word substringToIndex:range.location] lowercaseString]];
			[res appendString:@"ay"];			
		}
		if (i != [words count]){
			[res appendString:@" "];
		}
	}
	return [res capitalizedString];
}
@end
