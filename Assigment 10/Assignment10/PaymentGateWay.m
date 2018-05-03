//
//  PaymentGateWay.m
//  Assignment10
//
//  Created by Erik Sava on 2018-05-02.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import "PaymentGateWay.h"

@implementation PaymentGateWay

- (void) processPaymentAmount: (NSInteger) amount{
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount: amount];
        
    }else{
        NSLog(@"I am sorry. You payment cannot be processed at the moment");
    }
}

@end
