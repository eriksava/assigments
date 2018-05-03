//
//  InputHandler.m
//  Assignment10
//
//  Created by Erik Sava on 2018-05-02.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput: (NSString *) prompt {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSCharacterSet *removeCharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: removeCharSet];
    return trimmedString;
}

@end
