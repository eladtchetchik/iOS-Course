//
//  ELDOperand.m
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDBaseOperand.h"

@implementation ELDBaseOperand
    {
    __strong NSNumber* _numberHolder;
    }

- (instancetype) initWithNumber:(float)number
    {
    self = [self init];
    if (self)
        {
        _numberHolder = [NSNumber numberWithFloat:number];
        }
    return (self);
    }

- (BOOL) isOperand
    {
    return (YES);
    }

- (float) value
    {
    return ([_numberHolder floatValue]);
    }

- (NSString*)calculationDescription
    {
    return ([NSString stringWithFormat:@"%f", [self value]]);
    }

@end
