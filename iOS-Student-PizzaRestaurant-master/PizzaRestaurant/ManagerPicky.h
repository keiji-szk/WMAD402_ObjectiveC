//
//  ManagerPicky.h
//  PizzaRestaurant
//
//  Created by 鈴木啓司 on 2022-09-11.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface ManagerPicky : NSObject<KitchenDelegate>
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@end

NS_ASSUME_NONNULL_END
