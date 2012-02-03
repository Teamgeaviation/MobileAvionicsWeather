//
//  GpsData.h
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface GpsData : NSObject
<CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
    NSString *lon;
    NSString *lat;
}
-(NSString *) locationData;
-(NSString *) lon;
-(NSString *) lat;

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
//-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error;

@property(nonatomic, retain) CLLocationManager *locationManager;
@property(nonatomic, retain) NSString *lon;
@property(nonatomic, retain) NSString *lat;

@end
