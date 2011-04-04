//
//  BoatAnimation.h
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 Leo Burnett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimationDelegate.h"

@interface BoatAnimation : UIViewController <AnimationDelegate> {
    IBOutlet UIImageView *man;
    IBOutlet UIImageView *pack;
    
    CGRect manRect;
    CGRect packRect;
}

@end
