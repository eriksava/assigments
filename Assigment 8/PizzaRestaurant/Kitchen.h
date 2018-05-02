//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Erik Sava on 2018-04-30.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"


@class Kitchen;
@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end



@interface Kitchen : NSObject


@property (nonatomic, weak) id <KitchenDelegate>delegate; 

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end
