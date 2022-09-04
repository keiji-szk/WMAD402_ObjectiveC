//
//  InputCollector.h
//  Lab5
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//typedef NS_ENUM(NSInteger, COMMANDTYPE) {
//	CT_NEW = 0,
//	CT_LIST = 1,
//	CT_QUIT = 2
//};

@interface InputCollector : NSObject
//-(COMMANDTYPE)promptUserSelectCommand;
-(NSString*)imputForPrompt:(NSString*)msg;
@end

NS_ASSUME_NONNULL_END
