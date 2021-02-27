//
//  QuestionFactory.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import "QuestionFactory.h"

@implementation QuestionFactory


//- (instancetype) init {
//    if (self = [super init]) {
//        NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
//    }
//    return self;
//}

- (Question *) generateRandomQuestion {
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    NSString *chosenClassName = [questionSubclassNames objectAtIndex:arc4random_uniform(4)];  // 0 ~ 3
    return [[NSClassFromString(chosenClassName)alloc]init];
}

@end
