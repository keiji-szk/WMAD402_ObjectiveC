//
//  Person.m
//  Lab2
//
//  Created by Derrick Park on 2022-08-31.
//

#import "Person.h"

//@interface Person ()
//
//@property (nonatomic, copy) NSString *name;
//@property (nonatomic, assign) NSUInteger age;
//
//@end

@implementation Person

- (instancetype)initWithName:(NSString *)name andAge:(NSUInteger)age
{
  self = [super init];
  if (self) {
    _name = name;
    _age = age;
  }
  return self;
}

- (void)printInfo {
  NSLog(@"Name: %@, Age: %lu", _name, _age);
}

+ (void)hello {
  NSLog(@"Hello!");
}

@end
