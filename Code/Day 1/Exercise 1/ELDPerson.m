
#import "ELDPerson.h"

@implementation ELDPerson
	{
	NSUInteger _age;
	}

- (id) initWithAge: (NSUInteger) age
	{
	self = [super init];
	if (self)
		{
		_age = age;
		}
	return (self);
	}

- (void) sayHello
	{
	printf("Hello my age is %lu\n", (unsigned long)_age );
	}

@end