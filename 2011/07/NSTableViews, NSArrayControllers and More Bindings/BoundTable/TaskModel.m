//
//  TaskModel.m
//  BoundTable
//
//  Created by Alex Jackson on 27/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "TaskModel.h"
@implementation TaskModel
@synthesize taskName, taskDueDate;
- (id)init {
    self = [super init];
    if (self) {
        taskName = [[NSString alloc] init];
        taskDueDate = [[NSDate alloc] init];
    }
    return self;
}
- (void)dealloc {
    [taskName release];
    [taskDueDate release];
    [super dealloc];
}
@end
