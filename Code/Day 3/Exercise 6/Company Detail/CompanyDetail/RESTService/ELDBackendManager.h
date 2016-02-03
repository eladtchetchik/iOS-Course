//
//  ELDBackendManager.h
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/22/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface ELDBackendManager : AFHTTPSessionManager

+ (ELDBackendManager*)sharedInstance;

- (void) getWeatherForLondonWithSuccess:(void(^)(NSDictionary* responseDictionary))successBlock failure:(void(^)(NSError* error))failureBlock;

@end
