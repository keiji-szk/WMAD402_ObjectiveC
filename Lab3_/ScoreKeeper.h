//
//  ScoreKeeper.h
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property NSInteger right;
@property NSInteger wrong;

- (void)addScore:(BOOL)right;

@end

NS_ASSUME_NONNULL_END
