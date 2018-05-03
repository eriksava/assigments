//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//
#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init{
    self = [super init];
    if(self){
        _rights = 0;
        _wrongs = 0;
    }
    return self;
}

-(void)displayResult{
    NSLog(@"score: %ld rights, %ld wrong --------- @ld", _rights, _wrongs, _rights / (_wrongs / _rights) * 100);
}
@end
