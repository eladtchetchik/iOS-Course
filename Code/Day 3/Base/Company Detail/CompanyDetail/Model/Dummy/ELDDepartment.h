//
//  ELDDepartment.h
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ELDEmployee.h"

@interface ELDDepartment : NSObject

@property (nonatomic, strong) NSString* departmentName;
@property (nonatomic, strong) NSArray* employees;
@property (nonatomic, strong) ELDEmployee* departmentHead;
@property (nonatomic, strong) NSString* phoneNumber;
@property (nonatomic, strong) NSString* emailAddress;

@end
