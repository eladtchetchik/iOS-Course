#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ELDPurchasable

@required

- (CGFloat)  purchasePrice;
- (BOOL) canBeReturned;

@optional

- (NSUInteger) warrantyPeriodInYears;
- (BOOL) offersAddedInsurance;
- (CGFloat)  insurancePrice;

@end


