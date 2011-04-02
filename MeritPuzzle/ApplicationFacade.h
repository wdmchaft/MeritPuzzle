//
//  ApplicationFacade.h
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Facade.h"

#define Startup @"startup"

@interface ApplicationFacade : Facade {
    
}

+ (ApplicationFacade *)getInstance;
- (void)startup:(id)app;

@end
