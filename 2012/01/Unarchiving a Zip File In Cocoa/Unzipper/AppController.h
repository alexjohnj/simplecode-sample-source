//
//  AppController.h
//  Unzipper
//
//  Created by Alex Jackson on 15/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject

@property (strong) NSString *filePath;

-(IBAction)openFile:(id)sender;
-(IBAction)unarchiveFile:(id)sender;

@end
