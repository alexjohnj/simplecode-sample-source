//
//  AppController.m
//  Unzipper
//
//  Created by Alex Jackson on 15/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController
@synthesize filePath;

-(IBAction)openFile:(id)sender{
    NSOpenPanel *oPanel = [[NSOpenPanel alloc] init];
    if(self.filePath != nil){
        self.filePath = nil; // nil the path in case the user is opening a second file.
    }
    
    self.filePath = [[NSString alloc] init];
    NSInteger choice = [oPanel runModal]; 
    if(choice == NSOKButton){
        self.filePath = [[oPanel URL] path];
    }
}

-(IBAction)unarchiveFile:(id)sender{
    if(self.filePath == nil){
        NSAlert *alert = [NSAlert alertWithMessageText:@"Error" 
                                         defaultButton:@"OK"
                                       alternateButton:nil
                                           otherButton:nil
                             informativeTextWithFormat:@"You need to select a file path"];
        [alert runModal];  //Alert the user and backout of the method if the file path hasn't been
        return; 
    }
    
    NSOpenPanel *oPanel = [[NSOpenPanel alloc] init]; //this lets the user choose where to extract the file to. 
    [oPanel setCanChooseFiles:NO];
    [oPanel setCanChooseDirectories:YES]; 
    [oPanel setCanCreateDirectories:YES]; //May as well do this, UX and all.
    
    NSInteger choice = [oPanel runModal];
    if(choice == NSOKButton){
        NSString *extractPath = [[NSString alloc] initWithString: [[oPanel URL]path]]; 
        NSArray *arguments = [NSArray arrayWithObject:self.filePath]; 
        
        NSTask *unzipTask = [[NSTask alloc] init];
        [unzipTask setLaunchPath:@"/usr/bin/unzip"]; //this is where the unzip application is on the system.
        [unzipTask setCurrentDirectoryPath:extractPath]; //this means we only have to pass one argument, the path to the zip.
        [unzipTask setArguments:arguments];
        [unzipTask launch];
    }
}
@end
