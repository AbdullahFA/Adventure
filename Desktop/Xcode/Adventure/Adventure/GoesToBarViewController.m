//
//  GoesToBarViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "GoesToBarViewController.h"

@interface GoesToBarViewController ()

@property (nonatomic, strong)IBOutlet UIButton *WithPoliceButton;
@property (nonatomic, strong)IBOutlet UIButton *WithFriendsButton;

@end

@implementation GoesToBarViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"FriendsTakeHimSegue"]) {
        [newViewController.navigationItem setTitle: self.WithFriendsButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"WithPoliceSegue"]) {
        [newViewController.navigationItem setTitle: self.WithPoliceButton.currentTitle];
    }
}

@end
