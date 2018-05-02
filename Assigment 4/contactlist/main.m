//
//  main.m
//  contactlist
//
//  Created by Erik Sava on 2018-04-16.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {

	InputCollector *inputCollector = [[InputCollector alloc] init];
	ContactList *contactList = [[ContactList alloc] init];
	NSString *inputSelection;
	
	while (![inputSelection isEqualToString:@"quit"]) {
		
	
		inputSelection = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application"];
		
		
		
		char userInput[50];
		fgets(userInput, 50, stdin);
		inputSelection = [NSString stringWithUTF8String:userInput];
		
		
		if ([inputSelection isEqual:@"quit"]) {
			return 0;
		}
		

		else if ([inputSelection isEqualToString:@"new"]) {
			char userName[255];
			char userEmail[255];
			
			NSString *contactName = [inputCollector inputForPrompt:@"New contact name"];
			fgets(userName, 255, stdin);
			NSString *contactEmail = [inputCollector inputForPrompt:@"New contact email"];
			fgets(userEmail, 255, stdin);
			
			contactName = [NSString stringWithUTF8String:userName];
			contactEmail = [NSString stringWithUTF8String:userEmail];
			
			contactName = [contactName stringByReplacingOccurrencesOfString:@"\n" withString:@""];
			contactEmail = [contactEmail stringByReplacingOccurrencesOfString:@"\n" withString:@""];
			
			Contact *contact = [[Contact alloc] initWithName:contactName andEmail:contactEmail];
			
			[contactList addContact:contact];
			
			NSLog(@"%@ has been added to your contact list", contactName);
            
			
			
		} else if ([inputSelection isEqualToString:@"quit"]) {
			NSLog(@"You have quit. Goodbye!");
			
			
		} else if ([inputSelection isEqualToString:@"list"]) {
			[contactList printList];
			
		} else {
			NSLog(@"That is not a valid option");
			
		}
		
	}

    return 0;
}
