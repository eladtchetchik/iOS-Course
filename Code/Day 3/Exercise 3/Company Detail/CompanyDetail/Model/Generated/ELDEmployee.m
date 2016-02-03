//
//  ELDEmployee.m
//  
//
//  Created by Elad Tchetchik on 7/22/15.
//
//

#import "ELDEmployee.h"
#import "ELDDepartment.h"
#import "ELDPosition.h"


@implementation ELDEmployee

@dynamic firstName;
@dynamic idNumber;
@dynamic lastName;
@dynamic profilePictureData;
@dynamic department;
@dynamic position;

- (UIImage*)profilePicture
    {
    return([UIImage imageWithData:self.profilePictureData]);
    }

@end
