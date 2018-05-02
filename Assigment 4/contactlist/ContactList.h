//
//  ContactList.h
//  contactlist
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (strong, nonatomic) NSMutableArray *contactList;

-(void)addContact:(Contact *)newContact;

- (NSMutableArray *)printList;

@end
