//
//  ELDDummyPersistanceAgent.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDDummyPersistanceAgent.h"
#import "ELDDepartment.h"
#import "ELDEmployee.h"
#import "ELDPosition.h"

static NSArray* __ELDDepartments;
static NSArray* __ELDEmployees;
static NSArray* __ELDPositions;

@implementation ELDDummyPersistanceAgent

+ (void) load
    {
    ELDPosition* departmentHead;
    ELDPosition* manager;
    ELDPosition* janitor;
    ELDPosition* salesman;
    
    departmentHead = [ELDPosition new];
    departmentHead.name = @"Department Head";
    departmentHead.positionDescription= @"This position means you got o meeting and are very important";
    departmentHead.upperEarningBoundary = @(100000);
    departmentHead.lowerEarningBoundary = @(500000);
    
    manager = [ELDPosition new];
    manager.name = @"Manager";
    manager.positionDescription= @"This person manages";
    manager.upperEarningBoundary = @(120000);
    manager.lowerEarningBoundary = @(400000);
    
    janitor = [ELDPosition new];
    janitor.name = @"Janitor";
    janitor.positionDescription= @"This person cleans";
    janitor.upperEarningBoundary = @(20000);
    janitor.lowerEarningBoundary = @(2000);
    
    salesman = [ELDPosition new];
    salesman.name = @"Salesman";
    salesman.positionDescription= @"This person cleans";
    salesman.upperEarningBoundary = @(200000);
    salesman.lowerEarningBoundary = @(30000);
    
    __ELDPositions = @[departmentHead, manager, janitor, salesman];
    
    ELDDepartment* salesDepartment;
    ELDDepartment* humanResourcesDepartment;
    ELDDepartment* facilitiesDepartment;
    ELDDepartment* accountsDepartment;
    
    salesDepartment.departmentName = @"Sales";
    salesDepartment.phoneNumber = @"111111";
    salesDepartment.emailAddress = @"sales@company.com";
    
    humanResourcesDepartment.departmentName = @"Human Resources";
    humanResourcesDepartment.phoneNumber = @"222222";
    humanResourcesDepartment.emailAddress = @"hr@company.com";
    
    facilitiesDepartment.departmentName = @"Facilities";
    facilitiesDepartment.phoneNumber = @"333333";
    facilitiesDepartment.emailAddress = @"facilities@company.com";
    
    accountsDepartment.departmentName = @"Accounting";
    accountsDepartment.phoneNumber = @"444444";
    accountsDepartment.emailAddress = @"accounts@company.com";
    
    __ELDDepartments = @[salesDepartment, humanResourcesDepartment, facilitiesDepartment, accountsDepartment];
    
    
    ELDEmployee* salesDepartmentHead;
    ELDEmployee* salesManager;
    ELDEmployee* salesSalesManOne;
    ELDEmployee* salesSalesManTwo;
    ELDEmployee* salesJanitor;
    
    salesDepartmentHead.firstName = @"Bob";
    salesDepartmentHead.lastName = @"Geldof";
    salesDepartmentHead.IDNumber = @"213456789";
    salesDepartmentHead.department = salesDepartment;
    salesDepartmentHead.position = departmentHead;
    salesDepartmentHead.profilePicture = [UIImage imageNamed:@""];
    
    salesManager.firstName = @"Jenny";
    salesManager.lastName = @"Button";
    salesManager.IDNumber = @"3687890";
    salesManager.department = salesDepartment;
    salesManager.position = manager;
    salesManager.profilePicture = [UIImage imageNamed:@""];
    
    salesSalesManOne.firstName = @"Bruce";
    salesSalesManOne.lastName = @"Dastardly";
    salesSalesManOne.IDNumber = @"987654";
    salesSalesManOne.department = salesDepartment;
    salesSalesManOne.position = salesman;
    salesSalesManOne.profilePicture = [UIImage imageNamed:@""];
    
    salesSalesManTwo.firstName = @"Jorge";
    salesSalesManTwo.lastName = @"Lorenzo";
    salesSalesManTwo.IDNumber = @"65657845";
    salesSalesManTwo.department = salesDepartment;
    salesSalesManTwo.position = salesman;
    salesSalesManTwo.profilePicture = [UIImage imageNamed:@""];
    
    salesJanitor.firstName = @"Henry";
    salesJanitor.lastName = @"Richards";
    salesJanitor.IDNumber = @"3425098";
    salesJanitor.department = salesDepartment;
    salesJanitor.position = janitor;
    salesJanitor.profilePicture = [UIImage imageNamed:@""];
    
    
    salesDepartment.departmentHead = salesDepartmentHead;
    salesDepartment.employees = @[salesDepartmentHead, salesManager, salesSalesManOne, salesSalesManTwo, salesJanitor];
    
    
    
    ELDEmployee* humanResourcesDepartmentHead;
    ELDEmployee* humanResourcesManager;
    ELDEmployee* humanResourcesJanitorOne;
    ELDEmployee* humanResourcesJanitorTwo;
    
    humanResourcesDepartmentHead.firstName = @"Marky";
    humanResourcesDepartmentHead.lastName = @"Mark";
    humanResourcesDepartmentHead.IDNumber = @"213456789";
    humanResourcesDepartmentHead.department = humanResourcesDepartment;
    humanResourcesDepartmentHead.position = departmentHead;
    humanResourcesDepartmentHead.profilePicture = [UIImage imageNamed:@""];
    
    humanResourcesManager.firstName = @"Martin";
    humanResourcesManager.lastName = @"Lev";
    humanResourcesManager.IDNumber = @"3687890";
    humanResourcesManager.department = humanResourcesDepartment;
    humanResourcesManager.position = manager;
    humanResourcesManager.profilePicture = [UIImage imageNamed:@""];
    
    
    humanResourcesJanitorOne.firstName = @"Justine";
    humanResourcesJanitorOne.lastName = @"Mckay";
    humanResourcesJanitorOne.IDNumber = @"65657845";
    humanResourcesJanitorOne.department = humanResourcesDepartment;
    humanResourcesJanitorOne.position = janitor;
    humanResourcesJanitorOne.profilePicture = [UIImage imageNamed:@""];
    
    humanResourcesJanitorTwo.firstName = @"Frank";
    humanResourcesJanitorTwo.lastName = @"Long";
    humanResourcesJanitorTwo.IDNumber = @"3425098";
    humanResourcesJanitorTwo.department = humanResourcesDepartment;
    humanResourcesJanitorTwo.position = janitor;
    humanResourcesJanitorTwo.profilePicture = [UIImage imageNamed:@""];
    
    
    humanResourcesDepartment.departmentHead = humanResourcesDepartmentHead;
    humanResourcesDepartment.employees = @[humanResourcesDepartmentHead, humanResourcesManager, humanResourcesJanitorOne, humanResourcesJanitorTwo];

    
    
    
    
    
    ELDEmployee* facilitiesDepartmentHead;
    ELDEmployee* facilitiesManagerOne;
    ELDEmployee* facilitiesManagerTwo;
    ELDEmployee* facilitiesJanitor;
    
    facilitiesDepartmentHead.firstName = @"Bronwyn";
    facilitiesDepartmentHead.lastName = @"Lidel";
    facilitiesDepartmentHead.IDNumber = @"213456789";
    facilitiesDepartmentHead.department = facilitiesDepartment;
    facilitiesDepartmentHead.position = departmentHead;
    facilitiesDepartmentHead.profilePicture = [UIImage imageNamed:@""];
    
    facilitiesManagerOne.firstName = @"Steve";
    facilitiesManagerOne.lastName = @"Steve";
    facilitiesManagerOne.IDNumber = @"3687890";
    facilitiesManagerOne.department = facilitiesDepartment;
    facilitiesManagerOne.position = manager;
    facilitiesManagerOne.profilePicture = [UIImage imageNamed:@""];
    
    facilitiesManagerTwo.firstName = @"Jon";
    facilitiesManagerTwo.lastName = @"Euwen";
    facilitiesManagerTwo.IDNumber = @"987654";
    facilitiesManagerTwo.department = facilitiesDepartment;
    facilitiesManagerTwo.position = manager;
    facilitiesManagerTwo.profilePicture = [UIImage imageNamed:@""];
    
    
    facilitiesJanitor.firstName = @"Warren";
    facilitiesJanitor.lastName = @"King";
    facilitiesJanitor.IDNumber = @"3425098";
    facilitiesJanitor.department = facilitiesDepartment;
    facilitiesJanitor.position = janitor;
    facilitiesJanitor.profilePicture = [UIImage imageNamed:@""];
    
    
    facilitiesDepartment.departmentHead = facilitiesDepartmentHead;
    facilitiesDepartment.employees = @[facilitiesDepartmentHead, facilitiesManagerOne, facilitiesManagerTwo, facilitiesJanitor];




    ELDEmployee* accountsDepartmentHead;
    ELDEmployee* accountsManager;
    ELDEmployee* accountsJanitor;
    
    accountsDepartmentHead.firstName = @"Pierre";
    accountsDepartmentHead.lastName = @"Dobs";
    accountsDepartmentHead.IDNumber = @"213456789";
    accountsDepartmentHead.department = accountsDepartment;
    accountsDepartmentHead.position = departmentHead;
    accountsDepartmentHead.profilePicture = [UIImage imageNamed:@""];
    
    accountsManager.firstName = @"Rufus";
    accountsManager.lastName = @"Ings";
    accountsManager.IDNumber = @"3687890";
    accountsManager.department = accountsDepartment;
    accountsManager.position = manager;
    accountsManager.profilePicture = [UIImage imageNamed:@""];
    
    accountsJanitor.firstName = @"Dorris";
    accountsJanitor.lastName = @"Richards";
    accountsJanitor.IDNumber = @"3425098";
    accountsJanitor.department = accountsDepartment;
    accountsJanitor.position = janitor;
    accountsJanitor.profilePicture = [UIImage imageNamed:@""];
    
    
    accountsDepartment.departmentHead = accountsDepartmentHead;
    accountsDepartment.employees = @[accountsDepartmentHead, accountsManager, accountsJanitor];


    __ELDEmployees = @[salesDepartmentHead, salesManager, salesSalesManOne, salesSalesManTwo, salesJanitor, humanResourcesDepartmentHead, humanResourcesManager, humanResourcesJanitorOne, humanResourcesJanitorTwo, facilitiesDepartmentHead, facilitiesManagerOne, facilitiesManagerTwo, facilitiesJanitor, accountsDepartmentHead, accountsManager, accountsJanitor];
    }


+ (NSArray*) allDepartments
    {
    return (__ELDDepartments);
    }

+ (NSArray*) allPositions
    {
    return (__ELDPositions);
    }

+ (NSArray*) allEmployees
    {
    return (__ELDEmployees);
    }


@end
