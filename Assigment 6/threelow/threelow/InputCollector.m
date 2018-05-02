//
//  InputCollector.m
//  threelow
//
//  Created by Erik Sava on 2018-04-20.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


-(NSString *)inputForPrompt:(NSString *)promptString {
	NSLog(@"\n%@", promptString);
	char userInput [255];
	fgets(userInput, 255, stdin);
	NSString *inputString = [[NSString stringWithUTF8String:userInput] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
	return inputString;
}


@end
