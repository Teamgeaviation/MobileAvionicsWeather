//
//  RestRequest.m
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RestRequest.h"
#import "ASIHTTPRequest.h"

@implementation RestRequest
@synthesize finalData;


-(id) init{
    self = [super init];
    if (self != nil)
    {
        self.finalData = [[NSString alloc] init];
    }
    return self;
}

-(NSString *)noaaRequest: (NSString *) temp :(NSString *) temp1
{
    NSString *final = [[NSString alloc] init];
    final = [NSString stringWithFormat:@"http://forecast.weather.gov/MapClick.php?lat=%@&lon=%@&FcstType=dwml",temp,temp1];
    NSURL *finalUrl = [NSURL URLWithString:final];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:finalUrl];
    [request startSynchronous];
    NSError *error = [request error];
    if(!error)
    {
        finalData = [request responseString];
       // NSLog(finalData);
    }
    
    return finalData;
    
}



@end
