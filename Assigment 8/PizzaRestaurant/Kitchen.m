//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:size toppings:toppings];
  
 
  
  if ( ![self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
    return nil;
  };

  
  PizzaSize newSize = size;
  
  
  if  ([self.delegate kitchenShouldUpgradeOrder:self]) {
    newSize = Large;
  }

  if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
    [self.delegate kitchenDidMakePizza:newPizza];
  }
  
  
    return newPizza;
}



@end
