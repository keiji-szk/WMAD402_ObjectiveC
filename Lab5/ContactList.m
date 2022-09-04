//
//  ContactList.m
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
	self = [super init];
	if (self) {
		_contactList = [[NSMutableArray alloc] init];
		
		[_contactList addObject:[[Contact alloc] initWithContactInfo:@"Keiji" eMail:@"hoge@mail.com"]];
		[_contactList addObject:[[Contact alloc] initWithContactInfo:@"Kouji" eMail:@"huga@mail.com"]];		
	}
	return self;
}

-(void)addContact:(Contact *)object{
	[_contactList addObject:object];
}

-(void)showList{
	for(id c in _contactList){
		[c showInfo];
	}
}
@end
