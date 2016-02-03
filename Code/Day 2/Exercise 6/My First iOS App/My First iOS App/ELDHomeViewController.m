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

#pragma mark - Object lifecycle

- (instancetype) initWithCoder:(NSCoder *)aDecoder
    {
    self  = [super initWithCoder:aDecoder];
    if (self)
        {
        }
    return (self);
    }

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
    {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
        {
        }
    return (self);
    }


- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

-(void) dealloc
    {

    }

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
    {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    UIViewController* destinationController;
    
    destinationController = segue.destinationViewController;
    NSLog(@"segue.identifier: %@", segue.identifier);
    NSLog(@"[destinationController class] : %@", NSStringFromClass([destinationController class]));
    }


#pragma mark - View Lifecycle

- (void)viewDidLoad
    {
    [super viewDidLoad];
    }

- (void) viewWillAppear:(BOOL)animated
    {
    [super viewWillAppear:animated];
    }

- (void) viewDidAppear:(BOOL)animated
    {
    [super viewDidAppear:animated];
    }

- (void) viewWillDisappear:(BOOL)animated
    {
    [super viewWillDisappear:animated];
    }

- (void) viewDidDisappear:(BOOL)animated
    {
    [super viewDidDisappear:animated];
    }


#pragma mark - Tap recognizer sample

- (IBAction)onTapRecognizerTap:(UITapGestureRecognizer*)sender
    {
    sender.view.backgroundColor = [UIColor redColor];
    }

#pragma mark - UIResponder methods

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> HomeController", __PRETTY_FUNCTION__);
    [super touchesBegan:touches withEvent:event];
    }

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> HomeController", __PRETTY_FUNCTION__);
    [super touchesMoved:touches withEvent:event];
    }

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> HomeController", __PRETTY_FUNCTION__);
    [super touchesEnded:touches withEvent:event];
    }

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> HomeController", __PRETTY_FUNCTION__);
    [super touchesCancelled:touches withEvent:event];
    }

@end
