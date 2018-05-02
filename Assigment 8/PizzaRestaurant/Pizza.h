//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef NS_ENUM(NSUInteger, PizzaSize) {
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject



- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize toppings:(NSArray*)toppings;

- (PizzaSize)sizeOfPizza;
- (NSArray *)toppings;

+ (PizzaSize)pizzaSizeEnumFromString:(NSString *)pizzaSizeString;

+ (Pizza *)largePepperoni;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;

@end







