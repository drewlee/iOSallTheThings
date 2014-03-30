//
//  ViewController.m
//  HelloWorld
//
//  Created by Andrew Lee on 10/20/13.
//  Copyright (c) 2013 Andrew Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set view's bg color to yellow
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Programmatically create label with specified dimensions
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 320, 80)];
    
    // Set label text
    label.text = @"Hello World!";
    // Set center alignment
    label.textAlignment = NSTextAlignmentCenter;
    
    // Add label to view in order to display it
    [self.view addSubview:label];
}

@end
