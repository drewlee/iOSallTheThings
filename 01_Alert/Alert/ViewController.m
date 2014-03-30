//
//  ViewController.m
//  Alert
//
//  Created by Andrew Lee on 10/16/13.
//  Copyright (c) 2013 Andrew Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (IBAction)handleAlertTrigger:(id)sender {
    // Title of the alert
    NSString *title = @"Hello!";
    // Message displayed in alert
    NSString *message = @"Well look what you did...";
    // Label of cancel button
    NSString *cancelTitle = @"OK";
    // Label of additional button(s)
    NSString *otherButton = @"Huh?";
    
    // Initialize alert
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:cancelTitle
                                          otherButtonTitles:otherButton, nil];
    
    // Show alert
    [alert show];
}

// Executes when additional alert buttons are tapped
// Defined via protocol (UIAlertViewDelegate)
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // Title of the alert
    NSString *title = @"What?";
    // Message displayed in alert
    NSString *message = @"Just tap, ok!";
    // Label of cancel button
    NSString *cancelTitle = @"Fine";
    
    // Actions are determined via buttons index
    // Cancel button has index of 0, hence next button has index of 1
    if (buttonIndex == 1) {
        // Initialize another alert
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:cancelTitle
                                              otherButtonTitles:nil];

        // Show alert
        [alert show];
    }
}

@end
