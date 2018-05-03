//
//  main.m
//  Assignment10
//
//  Created by Erik Sava on 2018-05-02.
//  Copyright © 2018 Erik Salcedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateWay.h"
#import "InputHandler.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int dollar = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is %d.\n Please select your payment method: \n1: Paypal \n2: Stripe\n3: Amazon\n4: ApplePaymentService",dollar);
        
        
        NSInteger *method = [[InputHandler getUserInputWithPrompt:@">>>"] integerValue];
        PaymentGateWay *gateway = [PaymentGateWay new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        
        switch (method) {
            case 1:
                //paypal
                gateway.paymentDelegate = paypal;
                break;
            case 2:
                //stripe
                gateway.paymentDelegate = stripe;
                break;
            case 3:
                //amazon
                gateway.paymentDelegate = amazon;
                break;
            case 4:
                //apple
                gateway.paymentDelegate = apple;
                break;
                
            default:
                break;
        }
        
        [gateway processPaymentAmount: dollar];
    }
    return 0;
}
