//
//  IntroMediator.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import "IntroMediator.h"
#import "Intro.h"
#import "ApplicationFacade.h"

@implementation IntroMediator

+ (NSString *)NAME {
    return @"IntroMediator";
}

- (Intro *)viewComponent {
    return viewComponent;
}

- (void)initializeMediator {
    self.mediatorName = [IntroMediator NAME];
}

- (void)onRegister {
    [viewComponent setDelegate:self];
}

- (void)next {
    
}


@end
