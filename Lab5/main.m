//
//  main.m
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		InputCollector* inputCol = [[InputCollector alloc] init];
		ContactList* contactList = [[ContactList alloc] init];
		do {
			NSString* userInput = [inputCol imputForPrompt:@"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n"];
			
			if ([userInput isEqualToString:@"new"]){
				NSString* name = [inputCol imputForPrompt:@"What's their name?\n"];
				NSString* eMail = [inputCol imputForPrompt:@"What's their e-Mail?\n"];
				Contact* newContact = [[Contact alloc] initWithContactInfo:name eMail:eMail];
				[contactList addContact:newContact];
			}else if ([userInput isEqualToString:@"list"]){
				[contactList showList];
			}else if ([userInput isEqualToString:@"quit"]){
				
				return 0;
			}else {
				NSLog(@"Invalid input. Try again\n");
			}
		}while(true);
	}
	return 0;
}
