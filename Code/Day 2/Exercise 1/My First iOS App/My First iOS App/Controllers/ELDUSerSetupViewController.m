//
//  ELDUSerSetupViewController.m
//  My First iOS App
//
//  Created by Elad Tchetchik on 7/16/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDUSerSetupViewController.h"
#import "ELDPerson.h"

@implementation ELDUSerSetupViewController
    {
    __weak IBOutlet UITextField *_ageEntryField;
    __weak IBOutlet UITextField *_nameEntryField;
    
    __strong ELDPerson* _currentUser;
    }

- (void)viewDidLoad
    {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    }

- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

#pragma mark - IBActions

- (IBAction)onSaveTap:(id)sender
    {
    _currentUser = [[ELDPerson alloc] initWithName:_nameEntryField.text age:[_ageEntryField.text intValue]];
    }


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
    {
        
    }


@end
