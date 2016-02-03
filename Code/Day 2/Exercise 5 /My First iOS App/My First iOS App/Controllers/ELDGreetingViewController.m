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
    
    __weak UIButton* _toggleColourButton;
    
    BOOL _isBlue;
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
    UIButton* toggleColourButton;
    
    [super viewDidLoad];
    _isBlue = YES;
    _nameLabel.text = _nameEntryField.text;
    
    toggleColourButton = [[UIButton alloc] initWithFrame:CGRectMake(20,60, 300, 40)];
    toggleColourButton.titleLabel.textColor = [UIColor blackColor];
    [toggleColourButton setTitle:@"Toggle Colour" forState:UIControlStateNormal];
    toggleColourButton.backgroundColor = [UIColor redColor];
    [toggleColourButton addTarget:self action:@selector(toggleColour:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:toggleColourButton];
    _toggleColourButton = toggleColourButton;
    }

- (void) dealloc
    {

    }

- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

#pragma mark - IBActions

- (IBAction)onNameTextChange:(id)sender
    {
    _nameLabel.text = _nameEntryField.text;
    }

- (IBAction)toggleColour:(id)sender
    {
    if (_isBlue)
        {
        self.view.backgroundColor = [UIColor greenColor];
        _isBlue = NO;
        }
    else
        {
        self.view.backgroundColor = [UIColor blueColor];
        _isBlue = YES;
        }
    
    }

@end
