//
//  FriendlyGreeterDeligate.m
//  Foodtruck
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "FriendlyGreeterDecider.h"

@implementation FriendlyGreeterDecider

-(BOOL) shouldSayHello{
    if(arc4random_uniform(2) % 2 == 0){
        return YES;
    }else{
        return NO;
    }
    return 0;
}

@end
