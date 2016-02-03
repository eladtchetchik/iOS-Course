//
//  ELDSubtractOperation.m
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDSubtractOperator.h"

@implementation ELDSubtractOperator

- (float) value
    {
    return ([self.firstOperand value] - [self.secondOperand value]);
    }

- (NSString*) calculationDescription
    {
    return([NSString stringWithFormat:@"%@ - %@",[self.firstOperand calculationDescription], [self.secondOperand calculationDescription]]);
    }


@end
