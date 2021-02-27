//
//  QuestionFactory.h
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

- (Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
