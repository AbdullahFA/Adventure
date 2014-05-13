//
//  ChrisBrownViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "ChrisBrownViewController.h"

@interface ChrisBrownViewController ()
@property (nonatomic, strong)IBOutlet UIButton *introduceToGirlButton;
@property (nonatomic, strong)IBOutlet UIButton *giveHimDrugsButton;

@end

@implementation ChrisBrownViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"IntroduceToGirlSegue"]) {
        [newViewController.navigationItem setTitle: self.introduceToGirlButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"GiveHimDrugSegue"]) {
        [newViewController.navigationItem setTitle: self.giveHimDrugsButton.currentTitle];
    }
}
@end

