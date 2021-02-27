//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

// public properties
@property NSString* question;
@property (nonatomic) NSInteger answer;
@property NSDate* startTime;
@property NSDate* endTime;

// public methods
- (instancetype) init;
- (NSTimeInterval) answerTime;


@end

NS_ASSUME_NONNULL_END
