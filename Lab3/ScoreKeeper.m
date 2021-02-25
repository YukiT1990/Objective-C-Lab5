//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype) init {
    return self;
}

- (NSString *) showScore {
    return [NSString stringWithFormat:@"score: %d right, %d wrong ---- %d%%", self.rightCount, self.wrongCount, 100 * self.rightCount / (self.rightCount + self.wrongCount)];
}


@end
