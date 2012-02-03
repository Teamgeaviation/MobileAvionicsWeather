//
//  weatherParse.m
//  MobileAvionicsWeather
//
//  Created by Team GE Aviation on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "weatherParse.h"

@implementation weatherParse
@synthesize organizeData, currentElement, goodData;

-(weatherParse *) initWeatherParse{
    [super init];
    organizeData = [[NSMutableDictionary alloc] init];
    NSLog(@"Parser init");
    return self;
}


-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if([elementName isEqualToString:@"data"] && [[attributeDict objectForKey:@"type"] isEqualToString:@"current observations"])
    {
        goodData = 1;
        //currentElement = elementName;
        if([[attributeDict objectForKey:@"type"] isEqualToString:@"current observations"])
        {
            NSLog(@"hi");
        }
       // NSLog([attributeDict objectForKey:@"type"]);
        
    }
    if(goodData == 1)
    {
      //  NSLog(elementName);
    }
   // if([elementName isEqualToString:@"temperature"])
   // {
  //      NSLog(elementName);
  //  }
    //NSLog(elementName);
}

-(void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
{
    //NSLog(@"Parse error occured %@", parseError);
}

-(void)parserDidStartDocument:(NSXMLParser *)parser
{
   // NSLog(@"Did Start Document");
}

-(void)parserDidEndDocument:(NSXMLParser *)parser
{
   // NSLog(@"Did End Document");
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
   // NSLog(elementName);
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string 
{   
   // NSLog(string);
   // if([string isEqualToString:@"location"])
   // {
    //    NSLog(string);
   // }
    if(goodData == 1)
    {
       // NSLog(string);
    }
    
}

@end
