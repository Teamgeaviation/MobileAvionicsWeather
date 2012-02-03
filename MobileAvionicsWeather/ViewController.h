//
//  ViewController.h
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GpsData.h"
#import "RestRequest.h"
#import "weatherParse.h"

@interface ViewController : UIViewController{
    GpsData *gpsData;
    RestRequest *rest;
  //  weatherParse *parse;
    NSTimer *update;
    
}

@property(nonatomic,retain) NSTimer *update;
@property(strong,nonatomic) GpsData *gpsData;
//@property(strong,nonatomic) weatherParse *parse;

-(void)UpdateRest: (NSTimer *) update;
-(void)beginParse: (NSData *) data;

@end
