//
//  AppController.h
//  BoundPreferencesWindow
//
//  Created by Alex Jackson on 26/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PreferencesController.h"

@interface AppController : NSObject 

@property (assign) IBOutlet NSWindow *mainWindow;
@property (retain) PreferencesController *preferencesController;

-(IBAction)showPreferences:(id)sender; 

@end
