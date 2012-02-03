//
//  weatherParse.h
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weatherParse : NSObject <NSXMLParserDelegate> {
    NSMutableString *currentElement;
    NSMutableDictionary *organizeData;
    NSInteger *goodData;
   // NSString *currentElement;
}

@property(nonatomic,retain) NSMutableDictionary *organizeData;
@property(nonatomic,retain) NSMutableString *currentElement;
@property(nonatomic) NSInteger *goodData;


-(weatherParse *) initWeatherParse;

@end
