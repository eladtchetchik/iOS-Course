//
//  ELDCalculating.h
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#ifndef ELDCalculator_ELDCalculating_h
#define ELDCalculator_ELDCalculating_h

@protocol ELDOperand <NSObject>

- (BOOL) isOperand;
- (float) value;
- (NSString*)calculationDescription;

@end

typedef NSObject<ELDOperand> ELDOperand;


@protocol ELDOperator <ELDOperand>

@property (nonatomic, strong) ELDOperand* firstOperand;

- (BOOL) doesRequireASecondOperand;

@optional

@property (nonatomic, strong) ELDOperand* secondOperand;

@end

typedef NSObject<ELDOperator> ELDOperator;

#endif
