//
//  ELDDepartmentTableCell.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDDepartmentTableCell.h"

@implementation ELDDepartmentTableCell
    {
    __weak IBOutlet UIImageView* _departmentLogoImageView;
    __weak IBOutlet UILabel* _departmentNameLabel;
    __weak IBOutlet UILabel* _departmentEmailAddressLabel;
    __weak IBOutlet UILabel* _departmentEmployeeCountLabel;
    
    __strong ELDDepartment* _department;
    }

- (void)awakeFromNib
    {
    self.department = _department;
    }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
    {
    [super setSelected:selected animated:animated];

    }

- (void) setDepartment:(ELDDepartment *)department
    {
    _department = department;
    
    _departmentLogoImageView.image = _department.departmentLogo;
    _departmentNameLabel.text = _department.departmentName;
    _departmentEmailAddressLabel.text = _department.emailAddress;
    _departmentEmployeeCountLabel.text = [NSString stringWithFormat:@"%lu", _department.employees.count];
    }


- (ELDDepartment*)department
    {
    return (_department);
    }




@end
