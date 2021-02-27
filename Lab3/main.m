//
//  main.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *newScoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *newInputHandler = [[InputHandler alloc] init];
        QuestionManager *newQuestionManager = [[QuestionManager alloc] init];
        QuestionFactory *newQuestionFactory = [[QuestionFactory alloc] init];
        NSLog(@"MATHS!\n");
        NSLog(@"Input quit to exit.\n");
        while (gameOn) {
            Question *newQuestion = newQuestionFactory.generateRandomQuestion;            
            
            NSString *strInput = [newInputHandler getUserInput:([NSString stringWithFormat:@"%@", newQuestion.question])];
            if ([strInput isEqualToString:@"quit"]) { break; }
            if (strInput.intValue == newQuestion.answer) {
                NSLog(@"Right!");
                newScoreKeeper.rightCount += 1;
            } else {
                NSLog(@"Wrong!");
                newScoreKeeper.wrongCount += 1;
            }
            [newQuestionManager.questions addObject:newQuestion];
            NSLog(@"%@", newScoreKeeper.showScore);
            NSLog(@"%@", newQuestionManager.timeOutput);
        }
    }
    return 0;
}


