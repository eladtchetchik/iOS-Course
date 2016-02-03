//
//  MRFGreetingViewController.m
//  Mr Friendly
//
//  Created by Elad Tchetchik on 7/12/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDGreetingViewController.h"
#import "ELDPerson.h"

@implementation ELDGreetingViewController
    {
    IBOutlet __weak UITextField* _nameEntryField;
    IBOutlet __weak UITextField* _ageEntryField;
    IBOutlet __weak UILabel* _nameLabel;
    }


- (instancetype) initWithCoder:(NSCoder *)aDecoder
    {
    self  = [super initWithCoder:aDecoder];
    if (self)
        {
        NSLog(@"%s", __PRETTY_FUNCTION__);
        }
    return (self);
    }

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
    {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
        {
        NSLog(@"%s", __PRETTY_FUNCTION__);
        }
    return (self);
    }

- (void)viewDidLoad
    {
    [super viewDidLoad];
    _nameLabel.text = _nameEntryField.text;
    }

- (void) dealloc
    {

    }

- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

- (IBAction)onNameTextChange:(id)sender
    {
    _nameLabel.text = _nameEntryField.text;
    }



@end
