//
//  GameController.m
//  Lab6_Threelow
//
//  Created by 鈴木啓司 on 2022-09-06.
//

#import "GameController.h"

@implementation GameController
-(instancetype)init {
	self = [super init];
	if (self) {
		_dices = [[NSMutableArray alloc] init];
		for(int i =0; i < 5; ++i){
			[_dices addObject:[[Dice alloc] init]];
		}
	}
	return self;
}

-(void)holdDie: (NSInteger)index{
	if (index < 1 || 5 < index) {
		return;
	}
	[_dices[index] hold];
}

@end
