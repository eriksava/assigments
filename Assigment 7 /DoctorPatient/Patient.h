//
//  Patient.h
//  DoctorPatient
//
//  Created by Erik Sava on 2018-04-23.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (weak, nonatomic) NSString *name;
@property (nonatomic) NSInteger *age;
@property (nonatomic) BOOL hasOHIP;

- (instancetype)initWithAge:(NSString *)name hasOHIP:(BOOL)hasOHIP andAge:(NSInteger *)age;

-(void) visit:(Doctor *)doctor;


@end
