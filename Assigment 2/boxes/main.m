//
//  main.m
//  boxes
//
//  Created by Erik Sava on 2018-04-18.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
	
	Box *box = [[Box alloc] initWithHeight:10.0 width:15.0 length:5.0];
	
	NSLog(@"The volume of the box is %0.2f", box.volume);
	
	Box *otherBox = [[Box alloc] initWithHeight:100.0 width:5.0 length:5.0];
	
	NSLog(@"The Volume of otherBox is %0.2f", otherBox.volume);
	
	if  ([otherBox canFit:box]) {
		NSLog(@"otherBox can't fit into the box because it volume is bigger");
	} else {
		NSLog(@"otherBox can fit into box because its volume is smaller");
	}
    return 0;
}
