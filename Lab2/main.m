//
//  main.m
//  Lab2
//
//  Created by Derrick Park on 2022-08-31.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		Box *pBox = [[Box alloc] initWithBoxParam:2.0 width:3.0 length:4.0];
		NSLog(@"%f", [pBox getVolume]);
		
		Box *pAnotherBox = [[Box alloc] initWithBoxParam:4.0 width:4.0 length:4.0];
		NSLog(@"How many times a box fit inside the other?: %d", [pBox getBoxFixingCount:pAnotherBox] );
	}
	return 0;
}
