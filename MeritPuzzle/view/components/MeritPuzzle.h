//
//  MeritPuzzle.h
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Intro.h"


@interface MeritPuzzle : UIViewController {
    Intro *intro;
}

@property (nonatomic, retain) Intro *intro;

- (void)showIntro;
- (void)hideIntro;

@end
