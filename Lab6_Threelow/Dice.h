//
//  Dice.h
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-05.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property NSInteger dValue;
-(void)roll;
-(void)hold;
-(void)reset;
-(BOOL)isHold;
@end

NS_ASSUME_NONNULL_END
