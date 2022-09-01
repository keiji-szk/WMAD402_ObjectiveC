//
//  Person.h
//  Lab2
//
//  Created by Derrick Park on 2022-08-31.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;


+ (void)hello;
- (instancetype)initWithName:(NSString *)name andAge:(NSUInteger)age;
- (void)printInfo;

@end
