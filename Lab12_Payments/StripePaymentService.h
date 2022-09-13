//
//  StripePaymentService.h
//  Lab12_Payments
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject<paymentDelegate>
-(void) processPaymentAmount: (NSInteger) amount;
-(BOOL) canProcessPayment;

@end

NS_ASSUME_NONNULL_END
