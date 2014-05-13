//
//  HelpsLadyViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "HelpsLadyViewController.h"

@interface HelpsLadyViewController ()

@property (nonatomic, strong)IBOutlet UIButton *marriedButton;
@property (nonatomic, strong)IBOutlet UIButton *foodPoisoningButton;

@end

@implementation HelpsLadyViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"GetsMarriedSegue"]) {
        [newViewController.navigationItem setTitle: self.marriedButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"GetsFoodPoisoningSegue"]) {
        [newViewController.navigationItem setTitle: self.foodPoisoningButton.currentTitle];
    }
}

@end
