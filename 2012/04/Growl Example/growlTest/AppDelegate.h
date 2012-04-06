//
//  AppDelegate.h
//  Growl Example
//
//  Created by Alex Jackson on 05/03/2012.
//

#import <Cocoa/Cocoa.h>
#import <Growl/Growl.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, GrowlApplicationBridgeDelegate>

@property (assign) IBOutlet NSWindow *window;

@end
