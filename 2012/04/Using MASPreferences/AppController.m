//
//  AppController.m
//  PrefTest
//
//  Created by Alex Jackson on 08/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController

@synthesize preferencesWindow = _preferencesWindow;

- (IBAction)displayPreferences:(id)sender {
    if(_preferencesWindow == nil){
        NSViewController *generalViewController = [[GeneralPreferencesViewController alloc] initWithNibName:@"GeneralViewController" bundle:[NSBundle mainBundle]];
        NSViewController *otherViewController = [[OtherPreferencesViewController alloc] initWithNibName:@"OtherPreferencesViewController" bundle:[NSBundle mainBundle]];
        NSArray *views = [NSArray arrayWithObjects:generalViewController, otherViewController, nil]; //an array with all our view controllers to pass to the preferences window
        NSString *title = NSLocalizedString(@"Preferences", @"Common title for Preferences window");
        _preferencesWindow = [[MASPreferencesWindowController alloc] initWithViewControllers:views title:title];
    }
    [self.preferencesWindow showWindow:self];
}
@end
