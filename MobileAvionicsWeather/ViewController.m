//
//  ViewController.m
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "weatherParse.h"

@implementation ViewController
@synthesize update, gpsData;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    gpsData = [[GpsData alloc] init];
    [gpsData.locationManager startUpdatingLocation];
    NSLog(@"Inside GPS Data");
    rest = [[RestRequest alloc] init];
    update = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(UpdateRest:) userInfo:nil repeats:NO];
   // parse = [[weatherParse alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload

{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

-(void)UpdateRest: (NSTimer *) update
{
    
    NSString *lon = gpsData.lon;
    NSString *lat = gpsData.lat;    
    NSString *xmlResponse =[rest noaaRequest:lat:lon];
    NSData *data = [xmlResponse dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"XML Data retrieved");
  //  NSLog(data.data);
    [self beginParse:data];
}

-(void)beginParse: (NSData *) data
{
    NSXMLParser *nsXmlParser = [[NSXMLParser alloc] initWithData:data];
    weatherParse *parser = [[weatherParse alloc] initWeatherParse];
    [nsXmlParser setDelegate:parser];
    [nsXmlParser parse];
    
    [parser release];
    [nsXmlParser release];
   // NSLog(@"wtf");
}

@end
