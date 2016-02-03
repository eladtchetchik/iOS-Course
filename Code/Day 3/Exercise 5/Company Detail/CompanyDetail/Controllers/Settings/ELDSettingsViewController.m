//
//  ELDSettingsViewController.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/21/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDSettingsViewController.h"

@interface ELDSettingsViewController ()

@end

@implementation ELDSettingsViewController

- (void)viewDidLoad
    {
    UINib* nib;
    NSArray* viewObjects;
    UIView* rootView;
    
    [super viewDidLoad];
    
    nib = [UINib nibWithNibName:@"ELDSettingsViewController" bundle:nil];
    viewObjects = [nib instantiateWithOwner:nil options:nil];
    rootView = [viewObjects firstObject];
    
    rootView.frame = self.view.bounds;
    [rootView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:rootView];
    [rootView sizeToFit];
    self.view.backgroundColor = [UIColor redColor];

    
    NSArray* constraints;
    NSDictionary* viewsByName;
    
    viewsByName = @{@"windowView":rootView};
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[windowView]-0-|" options:0 metrics:nil views:viewsByName];
    [self.view addConstraints:constraints];
    constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[windowView]-0-|" options:0 metrics:nil views:viewsByName];
    [self.view addConstraints:constraints];
    rootView.backgroundColor = [UIColor greenColor];
    self.view.translatesAutoresizingMaskIntoConstraints = YES;
    [self.view setNeedsUpdateConstraints];
//    [self.view setNeedsLayout];
//
//    NSLayoutConstraint* constraint;
//    
//    constraint = [NSLayoutConstraint constraintWithItem:rootView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:0];
//    [self.view addConstraint:constraint];
//    constraint = [NSLayoutConstraint constraintWithItem:rootView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
//    [self.view addConstraint:constraint];
//    constraint = [NSLayoutConstraint constraintWithItem:rootView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
//    [self.view addConstraint:constraint];
//    constraint = [NSLayoutConstraint constraintWithItem:rootView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0];
//    [self.view addConstraint:constraint];


    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
