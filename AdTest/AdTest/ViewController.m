//
//  ViewController.m
//  AdTest
//
//  Created by Delroy Dennie on 2014-07-26.
//  Copyright (c) 2014 DonVincisWorkshop. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
	
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1];
	[banner setAlpha:1];
	[UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAd:(NSError *)error {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1];
	[banner setAlpha:0];
	[UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1];
	[banner setAlpha:0];
	[UIView commitAnimations];
}

@end
