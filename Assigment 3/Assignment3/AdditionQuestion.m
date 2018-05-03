//
//  AdditionQuestions.m
//  Assignment3
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.


#import "AdditionQuestions.h"

@implementation AdditionQuestions

- (instancetype)init{
    self = [super init];
    if(self){
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{
    [super setQuestion: [NSString stringWithFormat:@"%ld + %ld = ", [super leftValue],[super rightValue]]];
    [super serAnswer: ([super leftValue] + [super rightValue])];
}
@end
