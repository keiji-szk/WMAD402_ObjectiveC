//
//  Box.m
//  Lab2
//
//  Created by 鈴木啓司 on 2022-08-31.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithBoxParam:(float)height width:(float)width length:(float)length
{
	self = [super init];
	if (self) {
		_height = height;
		_width = width;
		_length = length;
	}
	return self;
}

- (float)getVolume{
	float res = self.height * self.width * self.length;
	return res;
}

- (int)getBoxFixingCount:(Box*)b{
	float thisVolume = [self getVolume];
	float inputVolume = [b getVolume];
	if (thisVolume < inputVolume) {
		return (int)inputVolume / thisVolume;
	}else {
		return (int)thisVolume / inputVolume;
	}
}

@end
