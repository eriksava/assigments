//
//  Contact.h
//  contactlist
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *email;

- (instancetype)initWithName:(NSString *)name
					andEmail:(NSString *)email;

@end
