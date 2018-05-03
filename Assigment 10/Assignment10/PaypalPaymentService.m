//
//  PaypalPaymentService.m
//  Assignment10
//
//  Created by Erik Sava on 2018-05-02.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount: (NSInteger) amount{
    NSLog(@"Paypal");
}

- (BOOL) canProcessPayment{
    return arc4random_uniform(2) == 1;
}

@end
