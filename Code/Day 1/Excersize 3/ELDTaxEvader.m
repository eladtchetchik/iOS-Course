
#import "ELDTaxEvader.h"
#import "ELDPerson_private.h"

@implementation ELDTaxEvader

- (CGFloat) amountToPaySARS
	{
	CGFloat taxAmount;

	taxAmount = [self taxOwed];
	taxAmount = taxAmount/2.0f
	return (taxAmount);
	}

@end
