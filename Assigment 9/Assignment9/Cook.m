//
//  Cook.m
//  Foodtruck
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if([food isEqualToString:@"salad"]){
        return 5.0;
    }else if([food isEqualToString:@"beef"]){
        return 10.0;
    }else if([food isEqualToString:@"bao"]){
        return 8.0;
    }else if([food isEqualToString:@"shortbread"]){
        return 8.5;
    }else{
        return 7.0;
    }
    
}

@end
