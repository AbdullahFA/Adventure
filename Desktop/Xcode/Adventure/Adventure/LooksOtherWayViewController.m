//
//  LooksOtherWayViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "LooksOtherWayViewController.h"

@interface LooksOtherWayViewController ()

@property (nonatomic, strong)IBOutlet UIButton *LoveOfLifeButton;
@property (nonatomic, strong)IBOutlet UIButton *EvilRobberButton;

@end

@implementation LooksOtherWayViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"LoveOfHisLifeSegue"]) {
        [newViewController.navigationItem setTitle: self.LoveOfLifeButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"EvilRobberSegue"]) {
        [newViewController.navigationItem setTitle: self.EvilRobberButton.currentTitle];
    }
}


@end
