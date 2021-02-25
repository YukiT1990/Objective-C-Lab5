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
@property NSInteger answer;

// public methods
- (instancetype) init;


@end

NS_ASSUME_NONNULL_END
