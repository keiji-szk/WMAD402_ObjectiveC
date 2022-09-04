//
//  InputCollector.m
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import "InputCollector.h"
#import "InputHandler.h"

@implementation InputCollector

//-(COMMANDTYPE)promptString{
//	do {
//		printf("What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n");
//		
//		NSString* userInput = [InputHandler getUserInput];
//				
//		if ([userInput isEqualToString:@"new"]){
//			return CT_NEW;
//		}else if ([userInput isEqualToString:@"list"]){
//			return CT_LIST;
//		}else if ([userInput isEqualToString:@"quit"]){
//			return CT_QUIT;
//		}
//		
//		printf("Invalid command.");
//	}while(true);
//}

-(NSString*)imputForPrompt:(NSString*)msg{
	printf("%s",[msg UTF8String]);
	return [InputHandler getUserInput];
}
@end
