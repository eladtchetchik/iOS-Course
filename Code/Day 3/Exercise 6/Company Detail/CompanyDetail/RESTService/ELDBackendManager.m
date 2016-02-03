//
//  ELDBackendManager.m
//  CompanyDetail
//
//  Created by Elad Tchetchik on 7/22/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDBackendManager.h"

#define ELDWeatherAPIKey @"ce9c1da669f57ae705bc5b9176b1a"

#define ELDBaseAPIURIString @"http://api.worldweatheronline.com/free/v2/"

@implementation ELDBackendManager

+ (ELDBackendManager*) sharedInstance
    {
    static ELDBackendManager* _sharedInstance = nil;
 
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,
        ^{
        _sharedInstance = [[self alloc] initWithBaseURL:[NSURL URLWithString:ELDBaseAPIURIString]];
        });
    return _sharedInstance;
    }
 
- (instancetype)initWithBaseURL:(NSURL *)url
    {
    self = [super initWithBaseURL:url];
 
    if (self)
        {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        }
    return self;
    }

- (void) getWeatherForLondonWithSuccess:(void(^)(NSDictionary* responseDictionary))successBlock failure:(void(^)(NSError* error))failureBlock;
    {
    NSMutableDictionary* parameters;
    
    parameters = [NSMutableDictionary dictionary];
    parameters[@"num_of_days"] = @(1);
    parameters[@"tp"] = @(1);
    parameters[@"q"] = @"London,united+kingdom";
    parameters[@"format"] = @"json";
    parameters[@"key"] = ELDWeatherAPIKey;
 
    [self GET:@"weather.ashx" parameters:parameters success:
        ^(NSURLSessionDataTask *task, id responseObject)
            {
            successBlock(responseObject);
            }
        failure:^(NSURLSessionDataTask *task, NSError *error)
            {
            failureBlock(error);
            }
        ];
    }

@end
