//
//  QuestionManager.h
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray* questions;

- (instancetype) init;
- (NSString *) timeOutput;

@end

NS_ASSUME_NONNULL_END
