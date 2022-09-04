//
//  Contact.h
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject
@property (nonatomic, assign) NSString* name;
@property (nonatomic, assign) NSString* eMail;

- (instancetype)initWithContactInfo:(NSString *)name eMail:(NSString*)eMail;
- (void)showInfo;
@end

NS_ASSUME_NONNULL_END
