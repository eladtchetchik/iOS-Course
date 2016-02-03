//
//  ELDPosition.h
//  
//
//  Created by Elad Tchetchik on 7/22/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ELDPosition : NSManagedObject

@property (nonatomic, retain) NSString * positionDescription;
@property (nonatomic, retain) NSDecimalNumber * lowerEarningBoundary;
@property (nonatomic, retain) NSString * positionName;
@property (nonatomic, retain) NSDecimalNumber * upperEarningBoundary;

@end
