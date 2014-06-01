//
//  ViewController.m
//  NavigationController
//
//  Created by Andrew Lee on 5/31/14.
//  Copyright (c) 2014 Andrew Lee. All rights reserved.
//

#import "ViewController.h"
#import "OtherViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *isOtherViewController = [segue.destinationViewController isKindOfClass:[OtherViewController class]]
        ? @"Is OtherViewController"
        : @"Is not OtherViewController";

    NSLog(@"Identifier: %@", segue.identifier);
    NSLog(@"%@", isOtherViewController);
}

@end
