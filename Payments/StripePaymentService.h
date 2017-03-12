//
//  StripePaymentService.h
//  Payments
//
//  Created by David Guichon on 2017-03-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>


-(void)processPaymentAmount:(NSInteger)paymentAmount;

-(BOOL)canProcessPayment;

@end
