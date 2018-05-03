//
//  Server.m
//  Foodtruck
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Server.h"

@implementation Server

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if([food isEqualToString:@"salad"]){
        return 1.0;
    }else if([food isEqualToString:@"beef"]){
        return 5.0;
    }else if([food isEqualToString:@"chicken"]){
        return 3.5;
    }else if([food isEqualToString:@"pork"]){
        return 3.7;
    }else{
        return 2.0;
    }
}

@end
