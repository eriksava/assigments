//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Manager.h"
#import "Pizza.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping {
  if ([topping containsObject:@"anchovies"]) {
    return NO; }
  return YES;}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return NO;
}


@end
