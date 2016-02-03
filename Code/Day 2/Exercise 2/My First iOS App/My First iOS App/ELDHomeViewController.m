//
//  ViewController.m
//  My First iOS App
//
//  Created by Elad Tchetchik on 7/16/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDHomeViewController.h"

@interface ELDHomeViewController ()

@end

@implementation ELDHomeViewController

+ (void) initialize
    {
    if (self == NSClassFromString(@"ELDHomeViewController"))
        {
        NSLog(@"%s", __PRETTY_FUNCTION__);
        }
    }

+ (void) load
    {
    if (self == NSClassFromString(@"ELDHomeViewController"))
        {
        NSLog(@"%s", __PRETTY_FUNCTION__);
        }
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

- (void) awakeFromNib
    {
    [super awakeFromNib];
    NSLog(@"%s", __PRETTY_FUNCTION__);
    }


- (void) loadView
    {
    [super loadView];
    NSLog(@"%s", __PRETTY_FUNCTION__);
    }


- (void)viewDidLoad
    {
    [super viewDidLoad];
    NSLog(@"%s", __PRETTY_FUNCTION__);
    }

- (void) viewWillAppear:(BOOL)animated
    {
    [super viewWillAppear:animated];
    NSLog(@"%s", __PRETTY_FUNCTION__);
    }

- (void) viewDidAppear:(BOOL)animated
    {
    [super viewDidAppear:animated];
    NSLog(@"%s", __PRETTY_FUNCTION__);
    }

- (void) viewWillDisappear:(BOOL)animated
    {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [super viewWillDisappear:animated];
    }

- (void) viewDidDisappear:(BOOL)animated
    {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [super viewDidDisappear:animated];
    }

- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    NSLog(@"%s", __PRETTY_FUNCTION__);
    // Dispose of any resources that can be recreated.
    }

-(void) dealloc
    {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    }

@end
