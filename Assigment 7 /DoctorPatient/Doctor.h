//
//  Doctor.h
//  DoctorPatient
//
//  Created by Erik Sava on 2018-04-23.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, weak) NSString *name;
@property (nonatomic, weak) NSString *specialization;
@property (nonatomic) NSMutableSet *acceptedPatients;


-(BOOL) acceptPatient:(Patient *)patient;
-(void) trackAcceptedPatients:(Patient *)patient;
//-(void) writePrescription;


@end
