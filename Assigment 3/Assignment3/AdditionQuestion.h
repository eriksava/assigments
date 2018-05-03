//
//  AdditionQuestions.h
//  Assignment3
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"

@interface AdditioinQuestion : NSObject

@property(nonatomic,strong)NSString *question;
@property(nonatomic,assign)NSInteger *answer;
@property(nonatomic,strong)NSDate *startTime;
@property(nonatomic,strong)NSDate *endTime;

- (instancetype) init;

@end
