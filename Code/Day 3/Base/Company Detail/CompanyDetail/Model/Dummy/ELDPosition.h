//
//  ELDPosition.h
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/19/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELDPosition : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* positionDescription;
@property (nonatomic, strong) NSNumber* upperEarningBoundary;
@property (nonatomic, strong) NSNumber* lowerEarningBoundary;

@end
