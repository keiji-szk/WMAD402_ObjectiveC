//
//  GameController.h
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject
@property NSMutableArray* dices;

-(void)holdDie: (NSInteger)index;

@end

NS_ASSUME_NONNULL_END
