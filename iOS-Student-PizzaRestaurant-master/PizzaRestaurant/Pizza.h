//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by 鈴木啓司 on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, PizzaSize){
	SMALL = 0,
	MEDIUM = 1,
	LARGE = 2,
};


@interface Pizza : NSObject
@property (readonly, nonatomic) PizzaSize size;
@property (readonly, nonatomic) NSArray* topping;

-(instancetype)initWithSize:(PizzaSize)size andTopping:(NSArray*) topping;
-(NSString *)getSizeString;
+(Pizza *)largePepperoni;

@end

NS_ASSUME_NONNULL_END
