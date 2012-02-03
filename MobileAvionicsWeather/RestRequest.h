//
//  RestRequest.h
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestRequest : NSObject{
    NSString *finalData;
}

-(NSString *)noaaRequest: (NSString *) temp: (NSString *)temp1;

@property(nonatomic, retain) NSString *finalData;

@end
