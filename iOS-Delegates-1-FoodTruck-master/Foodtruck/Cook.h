//
//  Cook.h
//  Foodtruck
//
//  Created by 鈴木啓司 on 2022-09-08.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cook : NSObject<FoodTruckDelegate>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;


@end

NS_ASSUME_NONNULL_END
