//
//  ELDDepartment.m
//  
//
//  Created by Elad Tchetchik on 7/22/15.
//
//

#import "ELDDepartment.h"
#import "ELDEmployee.h"


@implementation ELDDepartment

@dynamic name;
@dynamic phoneNumber;
@dynamic emailAddress;
@dynamic logoData;
@dynamic employees;
@dynamic departmentHead;

- (UIImage*) departmentLogo
    {
    return  ([UIImage imageWithData:self.logoData]);
    }

@end
