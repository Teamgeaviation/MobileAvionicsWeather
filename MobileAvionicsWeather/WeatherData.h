//
//  WeatherData.h
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherData : NSObject{
    NSMutableDictionary *mData;
}



@property(nonatomic,retain) NSMutableDictionary *mData;

-(WeatherData *) initWeatherData; 

@end
