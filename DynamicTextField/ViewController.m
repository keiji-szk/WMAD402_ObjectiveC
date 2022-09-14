//
//  ViewController.m
//  DynamicTextField
//
//  Created by 鈴木啓司 on 2022-09-14.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	_myTextField.delegate = self;
}

- (BOOL)textField:(UITextField *)textField 
shouldChangeCharactersInRange:(NSRange)range 
replacementString:(NSString *)string{
	
	NSRange subRange = [textField.text rangeOfString:@"red" options:NSCaseInsensitiveSearch|NSBackwardsSearch];	
//	NSLog(@"%ld, %ld", subRange.length, subRange.location);	
	NSMutableAttributedString *attString = [textField.attributedText mutableCopy];
	[attString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:subRange];
	if (subRange.location != NSNotFound){
		NSRange endRange;
		endRange.location = subRange.location + subRange.length;
		endRange.length = [textField.text length] - endRange.location;
		[attString addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:endRange];		
	}
	[textField setAttributedText:attString];		
	return YES;
}

@end
