//
//  MeritPuzzleMediator.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import "MeritPuzzleMediator.h"
#import "MeritPuzzle.h"
#import "ApplicationFacade.h"

@implementation MeritPuzzleMediator

+ (NSString *)NAME {
    return @"MeritPuzzleMediator";
}

- (MeritPuzzle *)viewComponent {
    return viewComponent;
}

- (void)initializeMediator {
    self.mediatorName = [MeritPuzzleMediator NAME];
}

- (NSArray *)listNotificationInterests {
    return [NSArray arrayWithObjects: showBoatAnimation, nil];
}

- (void)handleNotification:(id<INotification>)notification {
    if([[notification name] isEqualToString:showBoatAnimation]){
        
    }
}

@end
