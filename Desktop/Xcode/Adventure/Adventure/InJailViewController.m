//
//  InJailViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "InJailViewController.h"

@interface InJailViewController ()

@property (nonatomic, strong)IBOutlet UIButton *talkChrisBrownButton;
@property (nonatomic, strong)IBOutlet UIButton *fightsChrisBrown;

@end

@implementation InJailViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"TalkToChrisBrownSegue"]) {
        [newViewController.navigationItem setTitle: self.talkChrisBrownButton.currentTitle];
    }
    if ([segue.identifier isEqualToString:@"FightChrisBrownSegue"]) {
        [newViewController.navigationItem setTitle: self.fightsChrisBrown.currentTitle];
    }

}



@end
