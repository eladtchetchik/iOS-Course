#import <Foundation/Foundation.h>


typedef NSObject<ELDPurchasable> ELDPurchasableItem

@interface ELDPerson : NSObject

- (id) initWithAge: (NSUInteger) age;

- (void) sayHello;

- (void) purchaseItem:(ELDPurchasableItem*)purchasableItem;

- (CGFloat)  costOfPurchasedItems;

- (void) returnPurchasedItem: (NSObject<ELDPurchasable>*)purchasedItem;

- (CGFloat)  costOfInsuranceForPurchasedItems;


@end



