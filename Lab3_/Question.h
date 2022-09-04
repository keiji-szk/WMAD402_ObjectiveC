//
//  AdditionQuestion.h
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic, assign) NSString* question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, assign)NSDate* startTime;
@property (nonatomic, assign)NSDate* endTime;

- (instancetype)init;
- (NSTimeInterval)answerTime;
-(void)generateQuestion;
@end

NS_ASSUME_NONNULL_END
