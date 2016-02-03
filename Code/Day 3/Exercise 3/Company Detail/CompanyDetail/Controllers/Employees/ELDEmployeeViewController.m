//
//  ELDEmployeeViewController.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#define EDLEmployeeCellReuseIdentifier @"EDLEmployeeCellReuseIdentifier"

#import "ELDEmployeeViewController.h"
#import "ELDPersistanceAgent.h"
#import "ELDEmployee.h"
#import "ELDEmployeeCollectionViewCell.h"

@implementation ELDEmployeeViewController
    {
    NSArray* _employees;
    NSDictionary* _employeesBySectionName;
    NSArray* _employeeSectionNames;
    }


#pragma mark - View Lifecycle

- (void)viewDidLoad
    {
    [super viewDidLoad];
    
    _employees = [[ELDPersistanceAgent sharedInstance] allEmployees];
    [self sortEmployeesByName];
    }


- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    }



#pragma mark - CollectionView DataSource Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
    {
    NSString* sectionName;
    
    sectionName = _employeeSectionNames[section];
    
    return ((NSArray*)_employeesBySectionName[sectionName]).count;
    }

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
    {
    return (_employeeSectionNames.count);
    }

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
    {
    ELDEmployeeCollectionViewCell* employeeCell;
    NSString* sectionName;
    NSArray* employeesInSection;
    
    sectionName = _employeeSectionNames[indexPath.section];
    employeesInSection = _employeesBySectionName[sectionName];
    
    employeeCell = [collectionView dequeueReusableCellWithReuseIdentifier:EDLEmployeeCellReuseIdentifier forIndexPath:indexPath];
    employeeCell.employee = employeesInSection[indexPath.row];
    
    return employeeCell;
    }


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/


#pragma mark - IBActions

- (IBAction)onFilterOptionChange:(UISegmentedControl*)sender
    {
    switch (sender.selectedSegmentIndex)
        {
        case (0):
            {
            [self sortEmployeesByName];
            break;
            }
        case (1):
            {
            [self sortEmployeesByDepartment];
            break;
            }
        case (2):
            {
            [self sortEmployeesByPosition];
            break;
            }
        default:
            break;
        }
    }



#pragma mark - Sorting Methods

- (void) sortEmployeesByName
    {
    NSSortDescriptor* lastNameDescriptor;
    NSSortDescriptor* firstNameDescriptor;
    
    lastNameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"lastName" ascending:YES];
    firstNameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"firstName" ascending:YES];
    
    _employeeSectionNames = @[@"Employees"];
    _employeesBySectionName = @{@"Employees":[_employees sortedArrayUsingDescriptors:@[lastNameDescriptor, firstNameDescriptor]]};
    
    [self.collectionView reloadData];
    }

- (void) sortEmployeesByDepartment
    {

    [self.collectionView reloadData];
    }

- (void) sortEmployeesByPosition
    {

    [self.collectionView reloadData];
    }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
