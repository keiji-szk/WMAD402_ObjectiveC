//
//  PaymentGateway.h
//  Lab12_Payments
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol paymentDelegate <NSObject>
-(void) processPaymentAmount: (NSInteger) amount;
-(BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<paymentDelegate> delegate;
-(void) processPaymentAmount: (NSInteger) amount;
@end

NS_ASSUME_NONNULL_END
