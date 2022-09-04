//
//  Contact.m
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithContactInfo:(NSString *)name eMail:(NSString*)eMail{
	self = [super init];
	if (self) {
		_name = name;
		_eMail = eMail;
	}
	return self;
}

- (void)showInfo{
	printf("name:%s, e-mail:%s\n", [_name UTF8String], [_eMail UTF8String]);
}

@end
