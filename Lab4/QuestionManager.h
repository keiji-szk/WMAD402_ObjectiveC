//
//  QuestionManager.h
//  Lab4
//
//  Created by 鈴木啓司 on 2022-09-03.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray* questions;
-(void)addQuestions:(Question *)question;
-(NSString*) timeOutput;
@end

NS_ASSUME_NONNULL_END
