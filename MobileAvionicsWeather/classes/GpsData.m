//
//  GpsData.m
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GpsData.h"
@implementation GpsData
@synthesize lon,lat, locationManager;

-(id) init{
    self = [super init];
    if (self != nil)
    {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.lon = [[NSString alloc] init ];
        self.lat = [[NSString alloc] init];
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    int degrees = newLocation.coordinate.latitude;
    double decimal = fabs(newLocation.coordinate.latitude - degrees);
    int minutes = decimal * 60;
    double seconds = decimal * 3600 - minutes * 60;
    NSString * latit =[[NSString alloc] init];
    latit  = [NSString stringWithFormat:@"%d", degrees];
    degrees = newLocation.coordinate.longitude;
    decimal = fabs(newLocation.coordinate.longitude - degrees);
    minutes = decimal * 60;
    seconds = decimal * 3600 - minutes * 60;
    NSString *longt = [[NSString alloc] init];
    longt = [NSString stringWithFormat:@"%d", degrees];
    self.lon = [NSString stringWithFormat:@"%@",longt];
    self.lat = [NSString stringWithFormat:@"%@",latit];
  //  NSLog(@"Longitude and Latitude found");
}


-(NSString *) locationData{
    return nil;
}

-(NSString *) lon
{
    NSLog(@"Long and Lat found");
    return lon;   
}

-(NSString *) latitude
{
    return lat;   
}

-(void) dealloc
{
    
}


@end
