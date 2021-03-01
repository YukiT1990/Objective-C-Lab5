//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import "Question.h"

@implementation Question {
    
}

// -: instance method
- (instancetype) init {
    if (self = [super init]) {
        _leftValue = arc4random_uniform(91) + 10;  // (0+10)~(90+10)
        _rightValue = arc4random_uniform(91) + 10;  // 10 ~ 100
        _startTime = [NSDate date];
    }
    return self;
}

- (void) generateQuestion {
    
}

- (NSTimeInterval) timeToAnswer {
    return round([self.endTime timeIntervalSinceDate:self.startTime]);
}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

@end
