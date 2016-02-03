//
//  ELDCalculation.m
//  ELDCalculator
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDCalculation.h"
#import "ELDBaseOperand.h"

@implementation ELDCalculation
    {
    __strong ELDOperand* _firstOperand;
    __strong NSMutableArray* _operators;
    __strong ELDOperator* _currentOperator;
    __strong ELDCalculation* _openCalculation;
    
    BOOL _isBracketed;
    float _value;
    BOOL _isComplete;
    }

- (instancetype) init
    {
    self = [super init];
    if (self)
        {
        _firstOperand = nil;
        _operators = [NSMutableArray array];
        _isComplete = NO;
        _currentOperator = nil;
        _openCalculation = nil;
        _isBracketed = NO;
        }
    return (self);
    }


- (instancetype)initWithOperand:(ELDOperand*)initialOperand
    {
    self = [self init];
        {
        _firstOperand = initialOperand;
        _value = [_firstOperand value];
        }
    return (self);
    }


- (void) addOperator:(ELDOperator*)theOperator;
    {
    if (_openCalculation != nil)
        {
        [_openCalculation addOperator:theOperator];
        return;
        }
    else
        {
        _currentOperator = theOperator;
        _currentOperator.firstOperand = [[ELDBaseOperand alloc] initWithNumber:_value];
        if ([theOperator doesRequireASecondOperand] == NO)
            {
            _value = [_currentOperator value];
            [_operators addObject:_currentOperator];
            _currentOperator = nil;
            }
        }
    }
    
- (BOOL) isInACompleteState
    {
    return (_isComplete);
    }

- (BOOL) isOperand
    {
    return (YES);
    }

- (float) value
    {
    return (_value);
    }

- (void) setAsBracketed
    {
    _isBracketed = YES;
    }


- (void) addOperand:(NSObject<ELDOperand> *)operand
    {
    if (_openCalculation !=nil)
        {
        [_openCalculation addOperand:operand];
        return;
        }
    
    if (_currentOperator != nil)
        {
        [_currentOperator setSecondOperand:operand];
        [_operators addObject:_currentOperator];
        _currentOperator = nil;
        _isComplete = YES;
        }
    else
        {
        if (_firstOperand == nil)
            {
            _firstOperand = operand;
            }
        else
            {
            // TODO: cant insert a number now
            }
        }
    }


- (void) openABracket
    {
    _openCalculation = [[ELDCalculation alloc] init];
    [_openCalculation setAsBracketed];
    }

- (void) closeABracket
    {
    ELDCalculation* secondOperand;
    
    secondOperand = _openCalculation;
    _openCalculation = nil;
    [self addOperand:secondOperand];
    }



- (NSString*) calculationDescription
    {
    NSMutableString* calculationString;
    
    calculationString = [NSMutableString new];
    if (_isBracketed)
        {
        [calculationString appendString:@"("];
        }
    for (ELDOperator* theOperator in _operators)
        {
        [calculationString appendString:[theOperator calculationDescription]];
        }
    if (_isBracketed)
        {
        [calculationString appendString:@")"];
        }
    return (calculationString);
    }

@end
