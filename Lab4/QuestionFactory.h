//
//  QuestionFactory.h
//  Lab4
//
//  Created by 鈴木啓司 on 2022-09-04.
//

#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject 
@property NSArray* questionSubclassNames;
-(Question *)generateRandomQuestion;
@end
NS_ASSUME_NONNULL_END
