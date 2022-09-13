//
//  ApplePaymentService.m
//  Lab12_Payments
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import "ApplePaymentService.h"


@implementation ApplePaymentService
-(void) processPaymentAmount: (NSInteger) amount{
	printf("Apple proceeded amount %ld\n", amount);
}
-(BOOL) canProcessPayment{
	return 1 == arc4random_uniform(2);
}

@end
