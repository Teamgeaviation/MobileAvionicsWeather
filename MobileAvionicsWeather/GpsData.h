//
//  blah.h
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface GpsData : NSObject <CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
    NSString *lon;
    NSString *lat;
}


-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;

-(NSString *) lon;
-(NSString *) latitude;


@property(nonatomic,retain) NSString *lon;
@property(nonatomic,retain) NSString *lat;
@property(nonatomic,retain) CLLocationManager *locationManager;
@end
