//
//  TaskModel.m
//  BoundTable
//
//  Created by Alex Jackson on 27/12/2011.

#import "TaskModel.h"
@implementation TaskModel
@synthesize taskName = _taskName;
@synthesize taskDueDate = _taskDueDate;

- (id)init {
    self = [super init];
    if (self) {
        _taskName = [[NSString alloc] init];
        _taskDueDate = [[NSDate alloc] init];
    }
    return self;
}
- (void)dealloc {
    [_taskName release];
    [_taskDueDate release];
    [super dealloc];
}
@end
