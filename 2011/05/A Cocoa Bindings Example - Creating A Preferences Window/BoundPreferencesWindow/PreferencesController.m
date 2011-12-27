//
//  PreferencesController.m
//  BoundPreferencesWindow
//
//  Created by Alex Jackson on 26/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PreferencesController.h"

@implementation PreferencesController

-(id)init{
    if (![super initWithWindowNibName:@"Preferences"])
        return nil;
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
}

@end
