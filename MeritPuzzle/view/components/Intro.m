//
//  Intro.m
//  MeritPuzzle
//
//  Created by Saad Shams on 4/2/11.
//  Copyright 2011 LB. All rights reserved.
//

#import "Intro.h"
#import "Animations.h"


@implementation Intro

@synthesize name, delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)animateIn {
    [Animations fadeIn:self.view animateWithDuration:0.5 delay:0 delegate:self];
}

- (void)animateInDidComplete {
    
}

- (void)animateOut {
    [Animations fadeOut:self.view animateWithDuration:0.15 delay:0 delegate:self];
}

- (void)animateOutDidComplete {
    [delegate next];
}

- (void)reset {
    [name setText:@""];
}

- (IBAction)next {
    if([self validate]){
        [self animateOut];
    }
}

- (BOOL)validate {
    if([name.text length] == 0){
        UIAlertView *error;
        error = [[UIAlertView alloc] initWithTitle:@"Name required" message:[NSString stringWithFormat:@"Please enter your name"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [error show];
        [error release];
        return NO;
    }
    return YES;
}

- (IBAction)backgroundTouch {
    [name resignFirstResponder];
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
	return YES;
}

@end
