//
//  ContactList.h
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
//@property (assign) NSMutableArray* contactList; // Cause error! why?
@property NSMutableArray* contactList;
-(void)addContact:(Contact *)object;
-(void)showList;
@end

NS_ASSUME_NONNULL_END
