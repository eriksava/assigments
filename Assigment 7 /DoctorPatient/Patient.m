//
//  Patient.m
//  DoctorPatient
//
//  Created by Erik Sava on 2018-04-23.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Patient.h"

@implementation Patient


- (instancetype)initWithAge:(NSString *)name hasOHIP:(BOOL)hasOHIP andAge:(NSInteger *)age
{
	self = [super init];
	if (self) {
		_name = name;
		_age = age;
		_hasOHIP = hasOHIP;
	}
	return self;
}


-(void) visit:(Doctor *)doctor {
	[doctor acceptPatient:self];
}


@end
