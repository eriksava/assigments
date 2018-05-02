//
//  Doctor.m
//  DoctorPatient
//
//  Created by Erik Sava on 2018-04-23.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
	self = [super init];
	if (self) {
		_name = name;
		_specialization = specialization;
	
	}
	return self;
}

-(void) trackAcceptedPatients:(Patient *)patient {
	[self.acceptedPatients addObject:patient];
	NSLog(@"%@", self.acceptedPatients);
}

-(BOOL) acceptPatient:(Patient *)patient {
	if (patient.hasOHIP) {
		[self trackAcceptedPatients:patient];
		return YES;
	}
	return NO;
}




@end
