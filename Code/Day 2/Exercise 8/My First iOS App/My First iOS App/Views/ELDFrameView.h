//
//  ELDFrameView.h
//  My First iOS App
//
//  Created by Elad Tchetchik on 7/17/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface ELDFrameView : UIView

@property (nonatomic, retain) IBInspectable UIColor* frameColor;
@property (assign, readwrite) IBInspectable CGFloat frameWidth;

@end
