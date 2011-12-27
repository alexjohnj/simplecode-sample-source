//
//  TaskModel.h
//  BoundTable
//
//  Created by Alex Jackson on 27/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaskModel : NSObject

@property (retain) NSDate *taskDueDate;
@property (copy) NSString *taskName;

@end
