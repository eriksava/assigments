//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "SecondManager.h"
#import "Pizza.h"

@implementation SecondManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping {
  NSLog(@"YAY FOR PIZZA");
    
    return 0;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return YES;
}



@end
