//
//  PaymentGateway.m
//  Payments
//
//  Created by David Guichon on 2017-03-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)number{
    if ([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:number];
    }
    else {
        NSLog(@"Sorry. Your payment cannot be processed");
        return;
    }
}

@end
