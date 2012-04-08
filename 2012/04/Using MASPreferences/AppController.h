//
//  AppController.h
//  PrefTest
//
//  Created by Alex Jackson on 08/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MASPreferencesWindowController.h"
#import "GeneralPreferencesViewController.h"
#import "OtherPreferencesViewController.h"

@interface AppController : NSObject

- (IBAction)displayPreferences:(id)sender;

@property (strong) NSWindowController *preferencesWindow;

@end
