//
//  ELDFrameView.m
//  My First iOS App
//
//  Created by Elad Tchetchik on 7/17/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDFrameView.h"
#import <QuartzCore/QuartzCore.h>

@implementation ELDFrameView
    {
    __weak UIView* _innerView;
    }

// Option 1

- (instancetype)initWithCoder:(NSCoder *)aDecoder
    {
    self = [super initWithCoder:aDecoder];
    if (self)
        {
        _frameColor = [UIColor greenColor];
        _frameWidth = 5.0f;
        }
    return (self);
    }


- (void) awakeFromNib
    {
    UIView* innerView;
    
    innerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    innerView.backgroundColor = [UIColor whiteColor];
    [self addSubview:innerView];
    _innerView = innerView;
    self.backgroundColor = _frameColor;
    }

- (void) layoutSubviews
    {
    CGRect innerViewFrame;
    
    innerViewFrame = CGRectMake(_frameWidth, _frameWidth, (self.bounds.size.width-(2*_frameWidth)), (self.bounds.size.height-(2*_frameWidth)));
    _innerView.frame = innerViewFrame;
    }


// Option 2
- (void)drawRect:(CGRect)rect
    {
    CGContextRef context;
    context = UIGraphicsGetCurrentContext();
    CGRect myFrame = self.bounds;
    CGContextSetLineWidth(context, _frameWidth);
    CGRectInset(myFrame, _frameWidth, _frameWidth);
    [_frameColor set];
    UIRectFrame(myFrame);
    }


@end
