//
//  AppController.m
//  LocaliseMe!
//
//  Created by Alex Jackson on 09/05/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(IBAction)pushMe:(id)sender{
    NSRunAlertPanel(@"Panel", @"Hello World", @"OK", nil, nil);
}

@end
