
#import "ELDPerson.h"

@implementation ELDPerson
	{
	__ strong NSMutableArray* _purchasedItems;
	NSUInteger _age;
	}

- (id) initWithAge: (NSUInteger) age
	{
	self = [super init];
	if (self)
		{
		_age = age;
		_purchasedItems = [NSMutableArray new];
		}
	return (self);
	}

- (void) sayHello
	{
	printf("Hello my age is %lu\n", (unsigned long)_age );
	}

 - (void) purchaseItem:(NSObject<ELDPurchasable>*)purchasableItem
	{
	[_purchasedItems addObject:purchasableItem];
	}

- (CGFloat)  costOfPurchasedItems;
	{
	CGFloat totalCost;

	totalCost = 0.0f;
	for (NSObject<ELDPurchasable>* item in _purchasedItems)
		{
		totalCost = [item purchasePrice];
		}
	return (totalCost);
	}

- (void) returnPurchasedItem: (NSObject<ELDPurchasable>*)purchasedItem
	{
	[_purchasedItems removeObject:purchasedItem];
	}


- (CGFloat)  costOfInsuranceForPurchasedItems
	{
	CGFloat totalCost;

	totalCost = 0.0f;
	for (NSObject<ELDPurchasable>* item in _purchasedItems)
		{
		if ([item respondsToSelector:@selector(insurancePrice)])
			{
			totalCost = [item insurancePrice];
			}
		}
	return (totalCost);
	}


@end
