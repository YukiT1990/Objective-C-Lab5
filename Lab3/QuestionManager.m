//
//  QuestionManager.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype) init {
    if (self = [super init]) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timeOutput {
    NSTimeInterval totalTime = 0.0;
    NSTimeInterval averageTime = 0.0;
    for (AdditionQuestion *eachQuestion in self.questions) {
        totalTime += eachQuestion.answerTime;
    }
    averageTime = totalTime / self.questions.count;
    return [NSString stringWithFormat: @"total time: %0.fs, average time: %0.fs", totalTime, averageTime];
}

@end
