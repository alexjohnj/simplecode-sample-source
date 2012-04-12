//
//  AppController.m
//  BoundPreferencesWindow
//
//  Created by Alex Jackson on 26/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController
@synthesize mainWindow = _mainWindow;
@synthesize  preferencesController = _preferencesController;

-(IBAction)showPreferences:(id)sender{
    if(!_preferencesController)
        _preferencesController = [[PreferencesController alloc] initWithWindowNibName:@"Preferences"];
    
    [self.preferencesController showWindow:self];
}

- (void)dealloc {
    [_preferencesController release];
    [super dealloc];
}

@end
