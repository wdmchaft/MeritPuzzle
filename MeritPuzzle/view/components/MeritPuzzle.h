//
//  MeritPuzzle.h
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Intro.h"
#import "BoatAnimation.h"


@interface MeritPuzzle : UIViewController {
    Intro *intro;
    BoatAnimation *boatAnimation;
}

@property (nonatomic, retain) Intro *intro;
@property (nonatomic, retain) BoatAnimation *boatAnimation;

- (void)showIntro;
- (void)hideIntro;
- (void)showBoatAnimation;
- (void)hideBoatAnimation;

@end
