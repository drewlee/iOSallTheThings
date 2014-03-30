//
//  ViewController.h
//  Alert
//
//  Created by Andrew Lee on 10/16/13.
//  Copyright (c) 2013 Andrew Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *alertTrigger;

- (IBAction)handleAlertTrigger:(id)sender;

@end
