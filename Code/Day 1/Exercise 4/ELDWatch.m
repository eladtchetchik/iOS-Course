
#import "ELDWatch.h"

@implementation ELDWatch

- (CGFloat)  purchasePrice
    {
    return (20000.0f);
    }

- (BOOL) canBeReturned
    {
    return (YES);
    }

- (NSUInteger) warrantyPeriodInYears
    {
    return (5);
    }

- (BOOL) offersAddedInsurance
    {
    return (YES);
    }

- (CGFloat)  insurancePrice
    {
    return (100);
    }


@end
