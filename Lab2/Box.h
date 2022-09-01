//
//  Box.h
//  Lab2
//
//  Created by 鈴木啓司 on 2022-08-31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithBoxParam:(float)height width:(float)width length:(float)length; 
- (float)getVolume;
- (int)getBoxFixingCount:(Box*)b;

@end

NS_ASSUME_NONNULL_END
