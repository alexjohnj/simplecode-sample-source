//
//  AppController.m
//  KVCBindings
//
//  Created by Alex Jackson on 26/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController
@synthesize foo;

-(id)init{
    self = [super init];
    
    if(self){
        [self setValue:[NSNumber numberWithFloat:50] forKey:@"foo"]; 
    }
    
    return self;    
}

-(void)dealloc{
    [super dealloc];
}

@end
