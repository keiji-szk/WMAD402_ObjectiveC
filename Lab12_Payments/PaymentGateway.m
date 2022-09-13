//
//  PaymentGateway.m
//  Lab12_Payments
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void) processPaymentAmount: (NSInteger) amount{
	if (![_delegate canProcessPayment]){
		printf("Sorry, payment cannot be proceeded.\n");
		return;
	}
	[_delegate processPaymentAmount:amount];
}

@end
