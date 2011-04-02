//
//  Intro.h
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimationDelegate.h"

@protocol IntroDelegate

- (void)next;

@end


@interface Intro : UIViewController <AnimationDelegate> {
    IBOutlet UITextField *name;
    id<IntroDelegate>delegate;
}

@property (nonatomic, retain) IBOutlet UITextField *name;
@property (nonatomic, retain) id<IntroDelegate>delegate;

- (IBAction)backgroundTouch;
- (IBAction)next;
- (BOOL)validate;

@end
