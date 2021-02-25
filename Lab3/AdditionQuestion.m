//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion {
    
}

// -: instance method
- (instancetype) init {
    if (self = [super init]) {
        NSInteger randomLeft = arc4random_uniform(91) + 10;  // (0+10)~(90+10)
        NSInteger randomRight = arc4random_uniform(91) + 10;
        _question = [NSString stringWithFormat:@"%d + %d = ?", (int)randomLeft, (int)randomRight];
        _answer = randomLeft + randomRight;
    }
    return self;
}

@end
