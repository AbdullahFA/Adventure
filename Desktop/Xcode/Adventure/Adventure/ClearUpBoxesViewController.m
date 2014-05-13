//
//  ClearUpBoxesViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "ClearUpBoxesViewController.h"

@interface ClearUpBoxesViewController ()

@property (nonatomic, strong)IBOutlet UIButton *helpLadyButton;
@property (nonatomic, strong)IBOutlet UIButton *lookOtherWayButton;

@end

@implementation ClearUpBoxesViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"HelpsTheLadySegue"]) {
        [newViewController.navigationItem setTitle: self.helpLadyButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"LooksOtherWaySegue"]) {
        [newViewController.navigationItem setTitle: self.lookOtherWayButton.currentTitle];
    }
}
@end
