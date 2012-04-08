//
//  OtherPreferencesViewController.m
//  PrefTest
//
//  Created by Alex Jackson on 08/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OtherPreferencesViewController.h"

@interface OtherPreferencesViewController ()

@end

@implementation OtherPreferencesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(NSString *)identifier{
    return @"Other";
}

-(NSImage *)toolbarItemImage{
    return [NSImage imageNamed:NSImageNameAdvanced];
}

-(NSString *)toolbarItemLabel{
    return NSLocalizedString(@"Other", @"Other more advanced preferences");
}


@end
