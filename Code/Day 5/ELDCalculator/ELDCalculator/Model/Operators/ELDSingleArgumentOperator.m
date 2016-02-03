//
//  ELDBaseOperator.m
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDSingleArgumentOperator.h"

@implementation ELDSingleArgumentOperator

- (BOOL) isOperand
    {
    return (NO);
    }

- (float) value
    {
    return [self.firstOperand value];
    }

- (NSString*) calculationDescription
    {
    return([self.firstOperand calculationDescription]);
    }

- (BOOL) doesRequireASecondOperand
    {
    return (NO);
    }
    
@end
