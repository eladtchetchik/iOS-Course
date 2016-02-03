//
//  ELDPersistanceAgent.h
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface ELDPersistanceAgent : NSObject

+ (ELDPersistanceAgent*)sharedInstance;

- (NSArray*) allDepartments;
- (NSArray*) allPositions;
- (NSArray*) allEmployees;
- (NSFetchedResultsController*) employeesControllerByDepartment;

-  (void) save;

- (id) createLazyEmployee;
- (id) createDilligentEmployee;
- (id) createDepartment;
- (id) createPosition;

@end
