#import <Foundation/Foundation.h>

int  main (void)
	{
	NSMutableArray* emptyArray;

	emptyArray = nil;
	[emptyArray performSelector:@selector(kickTheCat)];
	[emptyArray addObject:@"Hello"];
	NSLog(@"emptyArray: %@", emptyArray);
	emptyArray = [NSMutableArray new];
	[emptyArray addObject: @"Hello again"];
	NSLog(@"emptyArray: %@", emptyArray);
	[emptyArray addObject: [NSNull null]];
	NSLog(@"emptyArray: %@", emptyArray);
	[emptyArray addObject:nil];
	NSLog(@"emptyArray: %@", emptyArray);
	return (0);
	}