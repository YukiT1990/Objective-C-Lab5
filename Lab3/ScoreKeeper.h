//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

// public properties
@property int rightCount;
@property int wrongCount;

// public methods
- (instancetype) init;
- (NSString *) showScore;

@end

NS_ASSUME_NONNULL_END
