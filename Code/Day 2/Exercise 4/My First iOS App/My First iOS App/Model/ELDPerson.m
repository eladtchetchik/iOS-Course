
#import "ELDPerson.h"

@implementation ELDPerson


- (instancetype) initWithName: (NSString*) name age: (NSUInteger)age;
	{
	self = [super init];
	if (self)
		{
		_age = age;
		_name = name;
		}
	return (self);
	}




@end
