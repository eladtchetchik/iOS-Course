//
//  ELDEmployee.h
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ELDPosition.h"
#import <UIKit/UIKit.h>

@class ELDDepartment;

@interface ELDEmployee : NSObject

@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* IDNumber;
@property (nonatomic, strong) ELDDepartment* department;
@property (nonatomic, strong) ELDPosition* position;
@property (nonatomic, strong) UIImage* profilePicture;

@end
