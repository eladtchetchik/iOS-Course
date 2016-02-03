//
//  ELDEmployee.h
//  
//
//  Created by Elad Tchetchik on 7/22/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@class ELDDepartment, ELDPosition;

@interface ELDEmployee : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * idNumber;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSData * profilePictureData;
@property (nonatomic, retain) ELDDepartment *department;
@property (nonatomic, retain) ELDPosition *position;

- (UIImage*)profilePicture;

@end
