//
//  ELDUSerSetupViewController.m
//  My First iOS App
//
//  Created by Elad Tchetchik on 7/16/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDUserSetupViewController.h"
#import "ELDGreetingViewController.h"
#import "ELDPerson.h"

@implementation ELDUserSetupViewController
    {
    __weak IBOutlet UITextField *_ageEntryField;
    __weak IBOutlet UITextField *_nameEntryField;
    __weak IBOutlet UILabel* _nameLabel;
    
    __strong ELDPerson* _currentUser;
    __strong ELDGreetingViewController* _greetingViewController;
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
    [_currentUser removeObserver:self forKeyPath:@"name"];
    _currentUser = [[ELDPerson alloc] initWithName:_nameEntryField.text age:[_ageEntryField.text intValue]];
    _nameLabel.text = _currentUser.name;
    [_currentUser addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    }


- (IBAction)onGoToGreetingPageTap:(id)sender
    {
    [self addGreetingViewController];
    }


- (void) addGreetingViewController
    {
    _greetingViewController = [[ELDGreetingViewController alloc] initWithNibName:@"ELDGreetingViewController" bundle:nil];
    _greetingViewController.view.frame = self.view.bounds;
    [self.view addSubview:_greetingViewController.view];
    }

- (IBAction) growUsersName: (id) sender
    {
    _currentUser.name = [NSString stringWithFormat:@"%@ you big poo face",_currentUser.name];
    }


#pragma mark - Key value observing

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
	{
	_nameLabel.text = _currentUser.name;
	}



@end
