//
//  ELDDepartment.h
//  
//
//  Created by Elad Tchetchik on 7/22/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@class ELDEmployee;

@interface ELDDepartment : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * phoneNumber;
@property (nonatomic, retain) NSString * emailAddress;
@property (nonatomic, retain) NSData * logoData;
@property (nonatomic, retain) NSSet *employees;
@property (nonatomic, retain) ELDEmployee *departmentHead;
@end

@interface ELDDepartment (CoreDataGeneratedAccessors)

- (void)addEmployeesObject:(ELDEmployee *)value;
- (void)removeEmployeesObject:(ELDEmployee *)value;
- (void)addEmployees:(NSSet *)values;
- (void)removeEmployees:(NSSet *)values;


- (UIImage*) departmentLogo;

@end
