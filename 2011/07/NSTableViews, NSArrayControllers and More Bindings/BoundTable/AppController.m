//
//  AppController.m
//  BoundTable
//
//  Created by Alex Jackson on 27/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController
@synthesize tasksArray;

- (id)init {
    self = [super init];
    if (self) {
        tasksArray = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)dealloc {
    [tasksArray release];
    [super dealloc];
}
@end
