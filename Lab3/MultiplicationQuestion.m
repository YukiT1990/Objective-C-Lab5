//
//  MultiplicationQuestion.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

// -: instance method
- (instancetype) init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%d * %d = ?", (int)self.leftValue, (int)self.rightValue];
    super.answer = self.leftValue * self.rightValue;
}

@end
