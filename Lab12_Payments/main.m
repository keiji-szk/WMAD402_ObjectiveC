//
//  main.m
//  Lab12_Payments
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import <Foundation/Foundation.h>
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		while (YES) {
			NSInteger value = arc4random_uniform(1000)-100;
			printf("\nThank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method: \n1: Paypal, 2: Stripe, 3: Amazon, 4: Apple\n", value);
			char inputChars[255];
			fgets(inputChars, 255, stdin);
			long selValue = strtol(inputChars, NULL, 10);
			
			PaymentGateway* pyGt = [PaymentGateway new];
			PaypalPaymentService* ppService = [PaypalPaymentService new];
			StripePaymentService* spService = [StripePaymentService new];
			AmazonPaymentService* amService = [AmazonPaymentService new];
			ApplePaymentService* apService = [ApplePaymentService new];
			
			switch(selValue){
				case 1:
					[pyGt setDelegate:ppService];
					break;
				case 2:
					[pyGt setDelegate:spService];
					break;
				case 3:
					[pyGt setDelegate:amService];
					break;
				case 4:
					[pyGt setDelegate:apService];
					break;
				default:
					NSLog(@"Error. Invalid number inputted.");
					return 0;
			}
			
			[pyGt processPaymentAmount:value];
		}

	}
	return 0;
}
