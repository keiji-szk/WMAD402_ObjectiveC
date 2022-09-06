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

-(void)roll{
	for(int i =0; i < 5; ++i){
		[_dices[i] roll];
	}
} 

-(void)holdDie: (NSInteger)index{
	if (index < 1 || 5 < index) {
		return;
	}
	[_dices[index-1] hold];
}

-(void)resetDie{
	for(int i =0; i < 5; ++i){
		[_dices[i] reset];
	}
}

-(void)showDices{
	NSMutableString* str = [[NSMutableString alloc] init];
	NSInteger score = 0;
	for (id d in _dices) {
		NSMutableString* diceSymbol;
		NSInteger v = [d dValue];
		if (v == 1){
			diceSymbol = [@"⚀" mutableCopy];
		}else if (v == 2){
			diceSymbol = [@"⚁" mutableCopy];
		}else if (v == 3){
			diceSymbol = [@"⚂" mutableCopy];
		}else if (v == 4){
			diceSymbol = [@"⚃" mutableCopy];
		}else if (v == 5){
			diceSymbol = [@"⚄" mutableCopy];
		}else {
			diceSymbol = [@"⚅" mutableCopy];
		}
		if ([d isHold]){
			[diceSymbol insertString:@"[" atIndex:0];
			[diceSymbol appendString:@"]"];
			score += v;
		}
		[diceSymbol appendString:@" "];
		[str appendString:diceSymbol];
	}
	[str appendString:[NSString stringWithFormat:@"%ld", (long)score]];
	NSLog(@"%@", str);
}

@end
