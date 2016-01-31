#import "ELDPerson.h"

int  main (void)
	{
	ELDPerson* person;

	person = [[ELDPerson alloc] initWithAge:10];
	[person sayHello];

	return (0);
	}