//
//  SimpleTableViewController.m
//  SimpleTableView
//
//  Created by Andrew Lee on 10/20/13.
//  Copyright (c) 2013 Andrew Lee. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@property (strong, nonatomic) IBOutlet UITableViewCell *StateCell;

@end

@implementation SimpleTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSLog(@"%lu", (unsigned long)self.states.count);
}

- (NSArray *)states
{
    if (_states == nil){
        _states = @[@[@"AL", @"Alabama"],
                    @[@"AK", @"Alaska"],
                    @[@"AZ", @"Arizona"],
                    @[@"AR", @"Arkansas"],
                    @[@"CA", @"California"],
                    @[@"CO", @"Colorado"],
                    @[@"CT", @"Connecticut"],
                    @[@"DE", @"Delaware"],
                    @[@"FL", @"Florida"],
                    @[@"GA", @"Georgia"],
                    @[@"HI", @"Hawaii"],
                    @[@"ID", @"Idaho"],
                    @[@"IL", @"Illinois"],
                    @[@"IN", @"Indiana"],
                    @[@"IA", @"Iowa"],
                    @[@"KS", @"Kansas"],
                    @[@"KY", @"Kentucky"],
                    @[@"LA", @"Louisiana"],
                    @[@"ME", @"Maine"],
                    @[@"MD", @"Maryland"],
                    @[@"MA", @"Massachusetts"],
                    @[@"MI", @"Michigan"],
                    @[@"MN", @"Minnesota"],
                    @[@"MS", @"Mississippi"],
                    @[@"MO", @"Missouri"],
                    @[@"MT", @"Montana"],
                    @[@"NE", @"Nebraska"],
                    @[@"NV", @"Nevada"],
                    @[@"NH", @"New Hampshire"],
                    @[@"NJ", @"New Jersey"],
                    @[@"NM", @"New Mexico"],
                    @[@"NY", @"New York"],
                    @[@"NC", @"North Carolina"],
                    @[@"ND", @"North Dakota"],
                    @[@"OH", @"Ohio"],
                    @[@"OK", @"Oklahoma"],
                    @[@"OR", @"Oregon"],
                    @[@"PA", @"Pennsylvania"],
                    @[@"RI", @"Rhode Island"],
                    @[@"SC", @"South Carolina"],
                    @[@"SD", @"South Dakota"],
                    @[@"TN", @"Tennessee"],
                    @[@"TX", @"Texas"],
                    @[@"UT", @"Utah"],
                    @[@"VT", @"Vermont"],
                    @[@"VA", @"Virginia"],
                    @[@"WA", @"Washington"],
                    @[@"WV", @"West Virginia"],
                    @[@"WI", @"Wisconsin"],
                    @[@"WY", @"Wyoming"]];
    }

    return _states;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    // Default is always 1.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.states count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"States";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    // We no longer need to do this because of registerClass:forCellReuseIntentifier: method
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = self.states[indexPath.row][0];
    cell.detailTextLabel.text = self.states[indexPath.row][1];

    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
