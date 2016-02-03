//
//  ELDCalculation.h
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ELDCalculating.h"

@interface ELDCalculation : NSObject <ELDOperand>

- (instancetype)initWithOperand:(ELDOperand*)initialOperand;
- (void) addOperator:(ELDOperator*)theOperator;
- (void) addOperand:(ELDOperand*)operand;
- (BOOL) isInACompleteState;
- (void) openABracket;
- (void) closeABracket;
- (void) setAsBracketed;

- (NSString*) calculationDescription;

@end
