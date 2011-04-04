//
//  MeritPuzzle.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import "MeritPuzzle.h"


@implementation MeritPuzzle

@synthesize intro, boatAnimation;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        intro = [[Intro alloc] init];
        boatAnimation = [[BoatAnimation alloc] init];
        
        [self showIntro];
    }
    return self;
}

- (void)showIntro {
    //[self.view addSubview:intro.view];
    //[intro animateIn];
    [self.view addSubview:boatAnimation.view];
   //[boatAnimation animateIn];
}

- (void)hideIntro {
    [intro.view removeFromSuperview];
    [intro reset];
}

- (void)showBoatAnimation {
    
}

- (void)hideBoatAnimation {
    
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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
