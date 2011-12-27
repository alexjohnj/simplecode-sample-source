//
//  LocaliseMe_AppDelegate.h
//  LocaliseMe!
//
//  Created by Alex Jackson on 09/05/2011.
//  Copyright 2011 SimpleCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LocaliseMe_AppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
