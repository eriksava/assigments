//
//  PaymentGateWay.h
//  Assignment10
//
//  Created by Erik Sava on 2018-05-02.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateWay : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void) processPaymentAmount: (NSInteger) amount;


@end
