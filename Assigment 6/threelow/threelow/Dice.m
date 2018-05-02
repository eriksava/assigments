//
//  Dice.m
//  threelow
//
//  Created by Erik Sava on 2018-04-20.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Dice.h"

@implementation Dice


- (instancetype)initWithDiceValue
{
	self = [super init];
	if (self) {
		_diceValue = 0;
		[self randomize];
	}
	return self;
}

-(int) randomize {
	self.diceValue = arc4random_uniform(6) + 1;
	return self.diceValue;
}


@end
