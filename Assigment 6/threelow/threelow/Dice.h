//
//  Dice.h
//  threelow
//
//  Created by Erik Sava on 2018-04-20.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (assign, nonatomic) int diceValue;


-(instancetype)initWithDiceValue;

-(int) randomize;


@end
