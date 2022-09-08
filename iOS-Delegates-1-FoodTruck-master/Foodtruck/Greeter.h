//
//  Greeter.h
//  Foodtruck
//
//  Created by 鈴木啓司 on 2022-09-08.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreeterDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;
-(void)sayHello;

@end

NS_ASSUME_NONNULL_END
