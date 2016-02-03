//
//  ELDDummyPersistanceAgent.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDDummyPersistanceAgent.h"
#import "ELDDepartment.h"
#import "ELDDilligentEmployee.h"
#import "ELDLazyEmployee.h"
#import "ELDPosition.h"
#import "ELDPersistanceAgent.h"
#import <UIKit/UIKit.h>


@implementation ELDDummyPersistanceAgent

+ (void) createDummyData
    {
    ELDPosition* departmentHead;
    ELDPosition* manager;
    ELDPosition* janitor;
    ELDPosition* salesman;
    ELDPersistanceAgent* persistanceAgent;
    
    persistanceAgent = [ELDPersistanceAgent sharedInstance];
    
    departmentHead = [persistanceAgent createPosition];
    departmentHead.positionName = @"Department Head";
    departmentHead.positionDescription= @"This position means you got o meeting and are very important";
    departmentHead.upperEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"100000"];
    departmentHead.lowerEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"500000"];
    
    manager = [persistanceAgent createPosition];
    manager.positionName = @"Manager";
    manager.positionDescription= @"This person manages";
    manager.upperEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"120000"];
    manager.lowerEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"400000"];
    
    janitor = [persistanceAgent createPosition];
    janitor.positionName = @"Janitor";
    janitor.positionDescription= @"This person cleans";
    janitor.upperEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"20000"];
    janitor.lowerEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"2000"];
    
    salesman = [persistanceAgent createPosition];
    salesman.positionName = @"Salesman";
    salesman.positionDescription= @"This person cleans";
    salesman.upperEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"200000"];
    salesman.lowerEarningBoundary = [NSDecimalNumber decimalNumberWithString:@"30000"];
    
    [persistanceAgent save];
    
    ELDDepartment* salesDepartment;
    ELDDepartment* humanResourcesDepartment;
    ELDDepartment* facilitiesDepartment;
    ELDDepartment* accountsDepartment;
    
    salesDepartment = [persistanceAgent createDepartment];
    salesDepartment.name = @"Sales";
    salesDepartment.phoneNumber = @"111111";
    salesDepartment.emailAddress = @"sales@company.com";
    salesDepartment.logoData = UIImagePNGRepresentation([UIImage imageNamed:@"dep1.tiff"]);

    humanResourcesDepartment = [persistanceAgent createDepartment];
    humanResourcesDepartment.name = @"Human Resources";
    humanResourcesDepartment.phoneNumber = @"222222";
    humanResourcesDepartment.emailAddress = @"hr@company.com";
    humanResourcesDepartment.logoData = UIImagePNGRepresentation([UIImage imageNamed:@"dep2.tiff"]);
    
    facilitiesDepartment = [persistanceAgent createDepartment];
    facilitiesDepartment.name = @"Facilities";
    facilitiesDepartment.phoneNumber = @"333333";
    facilitiesDepartment.emailAddress = @"facilities@company.com";
    facilitiesDepartment.logoData = UIImagePNGRepresentation([UIImage imageNamed:@"dep3.tiff"]);
    
    accountsDepartment = [persistanceAgent createDepartment];
    accountsDepartment.name = @"Accounting";
    accountsDepartment.phoneNumber = @"444444";
    accountsDepartment.emailAddress = @"accounts@company.com";
    accountsDepartment.logoData = UIImagePNGRepresentation([UIImage imageNamed:@"dep4.tiff"]);
    
    [persistanceAgent save];
    
    
    ELDEmployee* salesDepartmentHead;
    ELDEmployee* salesManager;
    ELDEmployee* salesSalesManOne;
    ELDEmployee* salesSalesManTwo;
    ELDEmployee* salesJanitor;
    
    salesDepartmentHead = [persistanceAgent createDilligentEmployee];
    salesDepartmentHead.firstName = @"Bob";
    salesDepartmentHead.lastName = @"Geldof";
    salesDepartmentHead.idNumber = @"213456789";
    salesDepartmentHead.department = salesDepartment;
    salesDepartmentHead.position = departmentHead;
    salesDepartmentHead.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face1.tiff"]);

    salesManager = [persistanceAgent createDilligentEmployee];
    salesManager.firstName = @"Jenny";
    salesManager.lastName = @"Button";
    salesManager.idNumber = @"3687890";
    salesManager.department = salesDepartment;
    salesManager.position = manager;
    salesManager.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face2.tiff"]);

    salesSalesManOne = [persistanceAgent createLazyEmployee];
    salesSalesManOne.firstName = @"Bruce";
    salesSalesManOne.lastName = @"Dastardly";
    salesSalesManOne.idNumber = @"987654";
    salesSalesManOne.department = salesDepartment;
    salesSalesManOne.position = salesman;
    salesSalesManOne.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face3.tiff"]);
    
    salesSalesManTwo = [persistanceAgent createDilligentEmployee];
    salesSalesManTwo.firstName = @"Jorge";
    salesSalesManTwo.lastName = @"Lorenzo";
    salesSalesManTwo.idNumber = @"65657845";
    salesSalesManTwo.department = salesDepartment;
    salesSalesManTwo.position = salesman;
    salesSalesManTwo.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face4.tiff"]);
    
    salesJanitor = [persistanceAgent createLazyEmployee];
    salesJanitor.firstName = @"Henry";
    salesJanitor.lastName = @"Richards";
    salesJanitor.idNumber = @"3425098";
    salesJanitor.department = salesDepartment;
    salesJanitor.position = janitor;
    salesJanitor.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face5.tiff"]);
    
    
    salesDepartment.departmentHead = salesDepartmentHead;
    
    ELDEmployee* humanResourcesDepartmentHead;
    ELDEmployee* humanResourcesManager;
    ELDEmployee* humanResourcesJanitorOne;
    ELDEmployee* humanResourcesJanitorTwo;
    
    humanResourcesDepartmentHead = [persistanceAgent createLazyEmployee];
    humanResourcesDepartmentHead.firstName = @"Marky";
    humanResourcesDepartmentHead.lastName = @"Mark";
    humanResourcesDepartmentHead.idNumber = @"213456789";
    humanResourcesDepartmentHead.department = humanResourcesDepartment;
    humanResourcesDepartmentHead.position = departmentHead;
    humanResourcesDepartmentHead.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face6.tiff"]);
    
    humanResourcesManager = [persistanceAgent createLazyEmployee];
    humanResourcesManager.firstName = @"Martin";
    humanResourcesManager.lastName = @"Lev";
    humanResourcesManager.idNumber = @"3687890";
    humanResourcesManager.department = humanResourcesDepartment;
    humanResourcesManager.position = manager;
    humanResourcesManager.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face7.tiff"]);
    
    humanResourcesJanitorOne = [persistanceAgent createDilligentEmployee];
    humanResourcesJanitorOne.firstName = @"Justine";
    humanResourcesJanitorOne.lastName = @"Mckay";
    humanResourcesJanitorOne.idNumber = @"65657845";
    humanResourcesJanitorOne.department = humanResourcesDepartment;
    humanResourcesJanitorOne.position = janitor;
    humanResourcesJanitorOne.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face8.tiff"]);
    
    humanResourcesJanitorTwo = [persistanceAgent createDilligentEmployee];
    humanResourcesJanitorTwo.firstName = @"Frank";
    humanResourcesJanitorTwo.lastName = @"Long";
    humanResourcesJanitorTwo.idNumber = @"3425098";
    humanResourcesJanitorTwo.department = humanResourcesDepartment;
    humanResourcesJanitorTwo.position = janitor;
    humanResourcesJanitorTwo.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face9.tiff"]);
    
    
    humanResourcesDepartment.departmentHead = humanResourcesDepartmentHead;
    
    
    ELDEmployee* facilitiesDepartmentHead;
    ELDEmployee* facilitiesManagerOne;
    ELDEmployee* facilitiesManagerTwo;
    ELDEmployee* facilitiesJanitor;
    
    facilitiesDepartmentHead  = [persistanceAgent createLazyEmployee];
    facilitiesDepartmentHead.firstName = @"Bronwyn";
    facilitiesDepartmentHead.lastName = @"Lidel";
    facilitiesDepartmentHead.idNumber = @"213456789";
    facilitiesDepartmentHead.department = facilitiesDepartment;
    facilitiesDepartmentHead.position = departmentHead;
    facilitiesDepartmentHead.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face10.tiff"]);
    
    facilitiesManagerOne = [persistanceAgent createLazyEmployee];
    facilitiesManagerOne.firstName = @"Steve";
    facilitiesManagerOne.lastName = @"Steve";
    facilitiesManagerOne.idNumber = @"3687890";
    facilitiesManagerOne.department = facilitiesDepartment;
    facilitiesManagerOne.position = manager;
    facilitiesManagerOne.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face11.tiff"]);
    
    facilitiesManagerTwo = [persistanceAgent createLazyEmployee];
    facilitiesManagerTwo.firstName = @"Jon";
    facilitiesManagerTwo.lastName = @"Euwen";
    facilitiesManagerTwo.idNumber = @"987654";
    facilitiesManagerTwo.department = facilitiesDepartment;
    facilitiesManagerTwo.position = manager;
    facilitiesManagerTwo.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face12.tiff"]);
    
    facilitiesJanitor = [persistanceAgent createDilligentEmployee];
    facilitiesJanitor.firstName = @"Warren";
    facilitiesJanitor.lastName = @"King";
    facilitiesJanitor.idNumber = @"3425098";
    facilitiesJanitor.department = facilitiesDepartment;
    facilitiesJanitor.position = janitor;
    facilitiesJanitor.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face13.tiff"]);
    
    
    facilitiesDepartment.departmentHead = facilitiesDepartmentHead;


    ELDEmployee* accountsDepartmentHead;
    ELDEmployee* accountsManager;
    ELDEmployee* accountsJanitor;
    
    accountsDepartmentHead  = [persistanceAgent createDilligentEmployee];
    accountsDepartmentHead.firstName = @"Pierre";
    accountsDepartmentHead.lastName = @"Dobs";
    accountsDepartmentHead.idNumber = @"213456789";
    accountsDepartmentHead.department = accountsDepartment;
    accountsDepartmentHead.position = departmentHead;
    accountsDepartmentHead.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face14.tiff"]);
    
    accountsManager = [persistanceAgent createDilligentEmployee];
    accountsManager.firstName = @"Rufus";
    accountsManager.lastName = @"Ings";
    accountsManager.idNumber = @"3687890";
    accountsManager.department = accountsDepartment;
    accountsManager.position = manager;
    accountsManager.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face15.tiff"]);
    
    
    accountsJanitor = [persistanceAgent createDilligentEmployee];
    accountsJanitor.firstName = @"Dorris";
    accountsJanitor.lastName = @"Richards";
    accountsJanitor.idNumber = @"3425098";
    accountsJanitor.department = accountsDepartment;
    accountsJanitor.position = janitor;
    accountsJanitor.profilePictureData = UIImagePNGRepresentation([UIImage imageNamed:@"face16.tiff"]);
    
    
    accountsDepartment.departmentHead = accountsDepartmentHead;
    
    [persistanceAgent save];
    }



@end
