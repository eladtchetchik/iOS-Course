//
//  ELDDoubleArgumentOperator.h
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ELDCalculating.h"
#import "ELDSingleArgumentOperator.h"

@interface ELDDoubleArgumentOperator : ELDSingleArgumentOperator

@property (nonatomic, strong) ELDOperand* secondOperand;

@end
