//
//  Box.h
//  boxes
//
//  Created by Erik Sava on 2018-04-18.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (assign, nonatomic) float height;
@property (assign, nonatomic) float width;
@property (assign, nonatomic) float length;

- (instancetype)initWithHeight:(float)height
						 width:(float)width
						length:(float)length;


-(float) volume;

-(BOOL) canFit:(Box *)box;

@end
