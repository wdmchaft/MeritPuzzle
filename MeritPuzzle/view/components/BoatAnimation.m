//
//  BoatAnimation.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 Leo Burnett. All rights reserved.
//

#import "BoatAnimation.h"
#import "Animations.h"


@implementation BoatAnimation

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        manRect = CGRectMake(-75, -69, 475, 443);
        packRect = CGRectMake(714, 137, 379, 498);
    }
    return self; 
}

- (void)animateIn {
    [Animations animateViewTo:man animateWithDuration:1 delay:0 options:UIViewAnimationCurveEaseOut frame:manRect delegate:nil selector:nil];
    [Animations animateViewTo:pack animateWithDuration:1 delay:0.5 options:UIViewAnimationCurveEaseOut frame:packRect delegate:self selector:@selector(animateInDidComplete)];
}

- (void)animateInDidComplete {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init]; //required for detachNewThreadSelector from Animations.h
    NSLog(@"complete");
    NSLog(@"%f, %f", pack.frame.origin.x, pack.frame.origin.y);
    [pool release];
}

- (void)animateOut {
    
}

- (void)animateOutDidComplete {
    
}

- (void)reset {
    
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self animateIn];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
