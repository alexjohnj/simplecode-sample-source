//
//  AppDelegate.m
//  CoreLocationLocater
//
//  Created by Alex Jackson on 26/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize manager, textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.manager = [[CLLocationManager alloc] init];
    [self.manager setDelegate:self];
    [self.manager setDesiredAccuracy:kCLLocationAccuracyBest];
    [self.manager setDistanceFilter:kCLDistanceFilterNone];
    [self.manager startUpdatingLocation];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    [textField setStringValue:[NSString stringWithFormat:@"%@", newLocation]];
//    [textField setStringValue:[NSString stringWithFormat:@"%@", [newLocation timestamp]]]; //uncomment this line to set the text field to the timestamp
}

-(void)applicationWillTerminate:(NSNotification *)notification{
    [self.manager stopUpdatingLocation];
    [self.manager release];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    [textField setStringValue:[NSString stringWithFormat:@"Error: %@", error]];
}


@end
