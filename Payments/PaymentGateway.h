//
//  PaymentGateway.h
//  Payments
//
//  Created by David Guichon on 2017-03-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

@required
-(void)processPaymentAmount:(NSInteger)number;

@required
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;


-(void)processPaymentAmount:(NSInteger)number;

@end
