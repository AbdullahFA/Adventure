//
//  EatBoxesViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "EatBoxesViewController.h"

@interface EatBoxesViewController ()
@property (nonatomic, strong)IBOutlet UIButton *goesToBarButton;
@property (nonatomic, strong)IBOutlet UIButton *buffetButton;


@end

@implementation EatBoxesViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"GoesToBarSegue"]) {
        [newViewController.navigationItem setTitle: self.goesToBarButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"AllYouCanEatBuffetSegue"]) {
        [newViewController.navigationItem setTitle: self.buffetButton.currentTitle];
    }
}
@end
