//
//  GeneralViewController.m
//  PrefTest
//
//  Created by Alex Jackson on 08/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GeneralPreferencesViewController.h"

@interface GeneralPreferencesViewController ()

@end

@implementation GeneralPreferencesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(NSString *)identifier{ // this must be unique, MASPreferencesWindowController uses it to identify the preferences tab. It isn't displayed to the user
    return @"General";
}

-(NSImage *)toolbarItemImage{
    return [NSImage imageNamed:NSImageNamePreferencesGeneral]; // This is simply the icon the user sees representing this views preferences.
}

-(NSString *)toolbarItemLabel{
    return @"General"; // The user does see this label. It can be the same as the identifier but doesn't have to be and doesn't need to (but should) be unique
}

@end
