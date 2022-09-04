//
//  AdditionQuestion.h
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
@property (nonatomic, assign) NSString* question;
@property (nonatomic, assign) NSInteger answer;

- (instancetype)init;
@end

NS_ASSUME_NONNULL_END
