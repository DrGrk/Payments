//
//  UserInput.m
//  Payments
//
//  Created by David Guichon on 2017-03-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

-(int)getUserInput{
    NSLog(@"Please select your option \n 1 - Paypal, 2 - Stripe, 3 - Amazon");
    char userInput [200];
    fgets(userInput, 200, stdin);
    NSString *objcUserInput = [[NSString alloc] initWithUTF8String:userInput];
    NSString *objcUserInputTrimmed = [objcUserInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([objcUserInputTrimmed isEqualToString: @"Paypal"]) {
        return 0;
    }
    if ([objcUserInputTrimmed isEqualToString:@"Stripe"]) {
        return 1;
    }
    if ([objcUserInputTrimmed isEqualToString:@"Amazon"]) {
        return 2;
    }
    return 9999999;
    
    
}


@end
