//
//  main.m
//  Blocks
//
//  Created by 鈴木啓司 on 2022-09-12.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		//		(void) runTest3 {
		//		  // count the number of names starts with @"R"
		//		}
		
		NSArray *names = @[@"Messi", @"Ronaldo", @"Neymar", @"Ronaldhino", @"Roben"];
		NSString *letter = @"R";
		
		// value type cannot be modified inside the block;
		__block int count = 0;
		[names enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
			NSString* str = obj;
			if([str hasPrefix:letter]){
				count += 1;
			}
			
			NSLog(@"Hello, %lu - %@, %@", idx, obj, (*stop ? @"T": @"F"));
		}];
		
		NSLog(@"count: %d", count);
		
	}
	return 0;
}
