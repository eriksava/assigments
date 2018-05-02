//
//  Box.m
//  boxes
//
//  Created by Erik Sava on 2018-04-18.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Box.h"

@implementation Box


- (instancetype)initWithHeight:(float)height
						 width:(float)width
						length:(float)length
{
	self = [super init];
	if (self) {
		_height = height;
		_width = width;
		_length = length;
	}
	return self;
}


-(float) volume {
	return self.width * self.height * self.height;
}

-(BOOL) canFit:(Box *)box {
	if ([self volume] > [box volume]) {
		return YES;
	} else {
	return NO;
	}
}

@end
