//
//  ELDEmployeeCollectionViewCell.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDEmployeeCollectionViewCell.h"


@implementation ELDEmployeeCollectionViewCell
    {
    __weak IBOutlet UIImageView* _employeeImageView;
    __weak IBOutlet UILabel* _employeeFirstNameLabel;
    __weak IBOutlet UILabel* _employeeLastNameLabel;
    
    __strong ELDEmployee* _employee;
    }

- (void) awakeFromNib
    {
    self.employee = _employee;
    }

- (void) setEmployee:(ELDEmployee *)employee
    {
    _employee = employee;
    _employeeFirstNameLabel.text = _employee.firstName;
    _employeeLastNameLabel.text = _employee.lastName;
    _employeeImageView.image = _employee.profilePicture;
    }

- (ELDEmployee*) employee
    {
    return (_employee);
    }


@end
