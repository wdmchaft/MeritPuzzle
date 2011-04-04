//
//  StartupCommand.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import "StartupCommand.h"
#import "MeritPuzzle.h"
#import "MeritPuzzleMediator.h"
#import "IntroMediator.h"
#import "BoatAnimationMediator.h"

@implementation StartupCommand

- (void)execute:(id<INotification>)notification {
    MeritPuzzle *app = [notification body];
    
    [facade registerMediator:[MeritPuzzleMediator withViewComponent:app]];
    [facade registerMediator:[IntroMediator withViewComponent:app.intro]];
    [facade registerMediator:[BoatAnimationMediator withViewComponent:app.boatAnimation]];
}

@end
