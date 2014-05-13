//
//  ViewController.m
//  Adventure
//
//  Created by Blake Mitchell on 5/13/14.
//  Copyright (c) 2014 Blake Mitchell. All rights reserved.
//

#import "ViewController.h"
#import "AllYouCanEatBuffetViewController.h"
#import "ChrisBrownDuetViewController.h"
#import "MarriageViewController.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIButton *ClearUpButton;
@property (nonatomic, strong) IBOutlet UIButton *EatBoxesButton;
@property (nonatomic, weak)IBOutlet UILabel *endResultLabel;

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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *newViewController = segue.destinationViewController;



    if ([segue.identifier isEqualToString:@"ClearUpBoxesSegue"]) {
        [newViewController.navigationItem setTitle: self.ClearUpButton.currentTitle];
    }

    if ([segue.identifier isEqualToString:@"EatBoxesSegue"]) {
        [newViewController.navigationItem setTitle: self.EatBoxesButton.currentTitle];
    }
}

-(IBAction)unwindMethod:(UIStoryboardSegue *)unwindSegue
{


    if ([unwindSegue.identifier  isEqual: @"buffet"]) {
        self.endResultLabel.text = [[unwindSegue.sourceViewController buffetTextView]text];
    }

    else if ([unwindSegue.identifier isEqual: @"marriage"]){
        self.endResultLabel.text = [[unwindSegue.sourceViewController marriageTextView]text];
    }
    else if ([unwindSegue.identifier isEqual:@"duet"]){
        self.endResultLabel.text = [[unwindSegue.sourceViewController duetTextView]text];
    }










    

    //    NSString *chrisBrownPointer =[[unwindSegue.sourceViewController duetTextView]text];
    //    NSString *marriagePointer = [[unwindSegue.sourceViewController marriageTextView]text];
//    else if (unwindSegue.identifier == chrisBrownPointer) {
//        self.endResultLabel.text = [NSString stringWithFormat:@"%@", chrisBrownPointer];
//    } else if (unwindSegue.identifier == marriagePointer) {
//        self.endResultLabel.text = [NSString stringWithFormat:@"%@", marriagePointer];
//    }


    //UIViewController *sourceViewController = [unwindSegue sourceViewController];

    //    NSString *buffetPointer = [[unwindSegue.sourceViewController buffetTextView]text];
    //
    //    if (unwindSegue.identifier == buffetPointer)  {
    //        self.endResultLabel.text = [NSString stringWithFormat:@"%@", buffetPointer];
    //    }
    
}

@end
