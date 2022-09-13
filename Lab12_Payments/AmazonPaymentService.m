//
//  AmazonPaymentService.m
//  Lab12_Payments
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPaymentAmount: (NSInteger) amount{
	printf("Amazon proceeded amount %ld\n", amount);
}

-(BOOL) canProcessPayment{
	return 1 == arc4random_uniform(2);
}

@end
