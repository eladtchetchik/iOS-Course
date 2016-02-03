//
//  ELDCalculatorTests.m
//  ELDCalculatorTests
//
//  Created by Elad Tchetchik on 8/9/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ELDAddOperator.h"
#import "ELDBaseOperand.h"

@interface ELDCalculatorTests : XCTestCase

@end

@implementation ELDCalculatorTests
    {
    __strong ELDBaseOperand* _firtsOperand;
    __strong ELDBaseOperand* _secondOperand;
    }

- (void)setUp
    {
    [super setUp];
    _firtsOperand = [[ELDBaseOperand alloc] initWithNumber:4.0];
    _secondOperand = [[ELDBaseOperand alloc] initWithNumber:2.0];
    }


- (void)tearDown
    {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    }

- (void)testAddition
    {
    ELDAddOperator* addOperator;

    addOperator = [[ELDAddOperator alloc] init];
    addOperator.firstOperand = _firtsOperand;
    addOperator.secondOperand = _secondOperand;
    
    XCTAssertEqual([addOperator value], 6.0, @"Expect the addditon of 4 and 2 to be 6");
    NSLog(@"%@", [addOperator calculationDescription]);
//    XCTAssert([[addOperator calculationDescription] isEqualToString:@"4 + 2"], @"The calculation description for the addition operation is incorrect");

    }




- (void)testPerformanceExample
    {
    ELDAddOperator* addOperator;
    
    addOperator = [[ELDAddOperator alloc] init];
    addOperator.firstOperand = _firtsOperand;
    // This is an example of a performance test case.
    [self measureBlock:^{
        for (float i = 0; i < 100.0 ; i++)
            {
            addOperator.secondOperand = [[ELDBaseOperand alloc] initWithNumber:i];
            [addOperator value];
            }
        }];
    }

@end
