//
//  StripePaymentService.m
//  Payments
//
//  Created by David Guichon on 2017-03-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount{
        NSLog(@"Stripe Processed Payment for: $%li", paymentAmount);
}

-(BOOL)canProcessPayment{
    int rndm = arc4random_uniform(2);
    if (rndm == 1){
        return YES;
    }
    return NO;
}

@end
