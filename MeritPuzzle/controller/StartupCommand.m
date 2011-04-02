//
//  StartupCommand.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 Leo Burnett. All rights reserved.
//

#import "StartupCommand.h"

@implementation StartupCommand

- (void)execute:(id<INotification>)notification {
    NSLog(@"startup");
}

@end
