//
//  GameController.m
//  threelow
//
//  Created by Erik Sava on 2018-04-20.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)initWithDice
{
	self = [super init];
	if (self) {
		Dice *dice1 = [[Dice alloc] initWithDiceValue];
		Dice *dice2 = [[Dice alloc] initWithDiceValue];
		Dice *dice3 = [[Dice alloc] initWithDiceValue];
		Dice *dice4 = [[Dice alloc] initWithDiceValue];
		Dice *dice5 = [[Dice alloc] initWithDiceValue];
		
	}
	return self;
}

@end
