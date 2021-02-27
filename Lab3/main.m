//
//  main.m
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *newScoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *newQuestionManager = [[QuestionManager alloc] init];
        NSLog(@"MATHS!\n");
        NSLog(@"Input quit to exit.\n");
        while (gameOn) {
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            
            InputHandler *newInputHandler = [[InputHandler alloc] init];
            
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
            NSLog(@"%@\n", newScoreKeeper.showScore);
            NSLog(@"%@\n", newQuestionManager.timeOutput);
        }
    }
    return 0;
}


