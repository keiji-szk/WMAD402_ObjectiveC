//
//  ScoreKeeper.m
//  Lab3_
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void)addScore:(BOOL)right{
	if (right) {
		_right += 1;
	}else{
		_wrong += 1;
	}
	printf("score: %d right, %d wrong ---- %d%\n", _right, _wrong, 100*_right/(_right+_wrong));
}

@end
