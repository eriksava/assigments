//
//  QuestionManager.m
//  Assignment3
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditioinQuestion.h"

@implementation QuestionManager
-(instancetype)init{
    self = [super init];
    if(self){
        _questions = [NSMutableArray array];
    }
    return self;
}

+(QuestionManager *)manager{
    return [self init];
}

-(void)addQuestion: (AdditioinQuestion *)question{
    [_questions addObject: question];
}

- (NSString *) timeOutput{
    AdditioinQuestion *lastQ = [_questions lastObject];
    AdditioinQuestion *firstQ = [_questions firstObject];
    NSTimeInterval total = [lastQ.endTime timeIntervalSinceDate:firstQ.startTime];
    NSUInteger numQ = [_questions count];
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs",total / numQ];
}
@end

