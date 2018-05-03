//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property(nonatomic, assign)NSInteger rights;
@property(nonatomic, assign)NSInteger wrongs;

-(instancetype)init;
-(void)displayResult;

@end
