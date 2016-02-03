//
//  ELDTouchView.m
//  Mr Friendly
//
//  Created by Elad Tchetchik on 7/15/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDTouchView.h"

@implementation ELDTouchView
    {
    __weak IBOutlet UILabel* _label;
    }

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> %@", __PRETTY_FUNCTION__, _label.text);
    return [super hitTest:point withEvent:event];
    }

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> %@", __PRETTY_FUNCTION__, _label.text);
    return [super pointInside:point withEvent:event];
    }

#pragma mark - UIResponder methods

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> %@", __PRETTY_FUNCTION__, _label.text);
    [super touchesBegan:touches withEvent:event];
    }

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> %@", __PRETTY_FUNCTION__, _label.text);
    [super touchesMoved:touches withEvent:event];
    }

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> %@", __PRETTY_FUNCTION__, _label.text);
    [super touchesEnded:touches withEvent:event];
    }

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
    {
    NSLog(@"%s --> %@", __PRETTY_FUNCTION__, _label.text);
    [super touchesCancelled:touches withEvent:event];
    }


@end
