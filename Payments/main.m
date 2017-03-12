//
//  main.m
//  Payments
//
//  Created by David Guichon on 2017-03-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        UserInput *userInput = [[UserInput alloc] init];


//Create a random number ->> This can be turned into a method later
        NSInteger paymentAmount = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Acme.com. Your total today is $%li. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", (long)paymentAmount);
        int intInput = [userInput getUserInput];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
         id <PaymentDelegate> paymentSelection;
        switch (intInput) {
            case 0:
                paymentSelection = [[PaypalPaymentService alloc] init];
                break;
            
            case 1:
                paymentSelection = [[StripePaymentService alloc] init];
                break;
                
            case 2:
                paymentSelection = [[AmazonPaymentService alloc] init];
                break;
                
            default:
                break;
        }
        paymentGateway.paymentDelegate = paymentSelection;
        [paymentGateway processPaymentAmount:paymentAmount];
        
    }
    return 0;
}
