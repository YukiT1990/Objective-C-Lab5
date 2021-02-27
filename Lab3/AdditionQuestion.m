//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

// -: instance method
- (instancetype) init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%d + %d = ?", (int)self.leftValue, (int)self.rightValue];
    super.answer = self.leftValue + self.rightValue;
}

@end
