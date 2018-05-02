//
//  main.m
//  wordeffects
//
//  Created by Erik Sava on 2018-04-18.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	while (YES) {
		
		
		NSLog(@"\nMAIN MENU\n 1.Uppercase\n 2.Lowercase\n 3.Numberize\n 4.Canadianize\n 5.Respond\n 6.De-Space-It\n ");
		
		char inputChars[255];
		char optionNumber[3];
		
		
		printf("Input a string: ");
		scanf("%[^\n]s", inputChars);
		while(getchar() != '\n');
		printf("Input a option number: ");
		scanf("%c", optionNumber);
		while(getchar() != '\n');
		
		
		NSString *inputString = [NSString stringWithUTF8String:inputChars];
		NSString *inputOption = [NSString stringWithUTF8String:optionNumber];
		
		inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
		
		NSLog(@"Input was: %@, %@", inputString, inputOption);
		
		
		if ([inputOption isEqualToString:@"1"]) {
			NSString *uppercaseString = [inputString uppercaseString];
			NSLog(@"%@", uppercaseString);
			
		} else if ([inputOption isEqualToString:@"2"]) {
			NSString *lowercaseString = [inputString lowercaseString];
			NSLog(@"%@", lowercaseString);
			
		} else if ([inputOption isEqualToString:@"3"]) {
			NSNumberFormatter *stringNumber = [[NSNumberFormatter alloc] init];
			
			if ([stringNumber numberFromString:inputString]) {
				
				int integerNumber = [inputString intValue];
				
				NSLog(@"%i is an integer", integerNumber);
				
			} else {
				NSLog(@"%@ cannot be numberized!", inputString);
			}
			
		} else if ([inputOption isEqualToString:@"4"]) {
			NSString *canadaString = [inputString stringByAppendingString:@", eh?"];
			NSLog(@"%@", canadaString);
			
		
		} else if ([inputOption containsString:@"5"]) {
			if ([inputString hasSuffix:@"?"]) {
				NSLog(@"I DUNNOOOOO....");
			} else if ([inputString hasSuffix:@"?"]) {
				NSLog(@"YO CALM DOWN OK?");
			} else {
				NSLog(@"You have to type ! or ? to get a proper response!");
			}
		
		} else if ([inputOption containsString:@"6"]) {
			NSString *despaceify = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
			NSLog(@"%@", despaceify);
		}
		
		else {
			NSLog(@"\nYour input was invalid");
		}
		
	}
	
	return 0;
}
