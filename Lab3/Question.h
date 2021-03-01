//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

// public properties
@property (nonatomic, strong) NSString* question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;

// public methods
- (instancetype) init;
- (NSTimeInterval) timeToAnswer;
- (void) generateQuestion;

@end

NS_ASSUME_NONNULL_END
