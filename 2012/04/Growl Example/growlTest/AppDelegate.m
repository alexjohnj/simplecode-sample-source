//
//  AppDelegate.m
//  Growl Example
//
//  Created by Alex Jackson on 05/03/2012.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [GrowlApplicationBridge setGrowlDelegate:self]; // Setting a Growl delegate is unnecessary unless you need click callbacks. 
    [GrowlApplicationBridge notifyWithTitle:@"Application Launched" // This is the most important method, you notify with a title
                                description:@"The app launched successfully and displayed this notification" // a description (keep it short and sweet)
                           notificationName:@"testGrowlNotification" // The name of the notification, as it appears in your Growl registration dictionary.  
                                   iconData:nil // Pass nil to display your apps icon. Pass an empty NSData object to display no icon. 
                                   priority:0 // -2 == Low priority. +2 == High Priority. 0 == Neutral. Use wisely. Not all notification styles support priorities. 
                                   isSticky:NO // Sticky notifications stick around (sorry) until they're manually dismissed by the user. Don't abuse. 
                               clickContext:@"launchNotifyClick"]; // Normally a string which is passed to the growlNotificationWasClicked: delegate method to determine what to do when a notification was clicked. 
}

-(void)growlNotificationWasClicked:(id)clickContext{ // a Growl delegate method, called when a notification is clicked. Check the value of the clickContext argument to determine what to do
    if([clickContext isEqualToString:@"launchNotifyClick"]){
        NSLog(@"ClickContext successfully received!");
    }
}

#pragma mark - Delegate Methods

-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender{
    return YES;
}

@end
