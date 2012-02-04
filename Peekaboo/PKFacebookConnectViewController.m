//
//  PKFacebookConnectViewController.m
//  Peekaboo
//
//  Created by Tilo Mitra on 12-01-17.
//  Copyright (c) 2012 University of Waterloo. All rights reserved.
//

#import "PKFacebookConnectViewController.h"
#import "PKMasterViewController.h"
#import "PKAppDelegate.h"

@implementation PKFacebookConnectViewController

@synthesize facebookConnectButton;
@synthesize facebook;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (IBAction)facebookButtonSelected:(id)sender {
    
    PKAppDelegate *delegate = (PKAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [delegate checkDefaults];
    
    //We have access tokens so push them through to the next view.
    [self performSegueWithIdentifier:@"facebookButtonPressedSegue" sender:self]; 
  
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"facebookButtonPressedSegue"]) {
        
        PKMasterViewController *masterVC = [segue destinationViewController];
        
    }
}


#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[self performSegueWithIdentifier:@"facebookButtonPressedSegue" sender:self];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end