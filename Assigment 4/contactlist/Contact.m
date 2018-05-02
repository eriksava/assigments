//
//  Contact.m
//  contactlist
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name
					andEmail:(NSString *)email
{
	self = [super init];
	if (self) {
		_name = name;
		_email = email;
	}
	return self;
}

@end
