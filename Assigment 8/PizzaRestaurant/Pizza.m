//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "Pizza.h"


@interface Pizza ()

@property (nonatomic, assign) PizzaSize pizzaSize;
@property (nonatomic, strong) NSArray *pizzaToppings;

@end

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _pizzaToppings = toppings;
    }
    return self;
}

- (PizzaSize)sizeOfPizza {
    return self.pizzaSize;
}

- (NSArray *)toppings {
    return self.pizzaToppings;
}

+ (PizzaSize)pizzaSizeEnumFromString:(NSString *)pizzaSizeString {
    if ([pizzaSizeString isEqualToString:@"small"]) {
        return Small;
    } else if ([pizzaSizeString isEqualToString:@"medium"]) {
        return Medium;
    } else if ([pizzaSizeString isEqualToString:@"large"]) {
        return Large;
    }
    
    return Small;
}

+ (Pizza *)largePepperoni {
    Pizza *largePep = [[Pizza alloc] initWithPizzaSize:Large toppings:@[@"pepperoni"]];
    
    return largePep;
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
    Pizza *meatLovers = [[Pizza alloc] initWithPizzaSize:size toppings:@[@"pepperoni", @"ham", @"saugage"]];
    
    return meatLovers;
}

@end








