//
//  ExampleTableViewController.m
//  Test
//
//  Created by Tom Harvey on 27/01/2014.
//  Copyright (c) 2014 WeBuildStuff. All rights reserved.
//

#import "ExampleTableViewController.h"
#import "ColorOptions.h"

@interface ExampleTableViewController ()

@end

@implementation ExampleTableViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(displayOtherPossibility)];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Item %i", (int)indexPath.row + 1];
    cell.accessoryType = (int)indexPath.row + 1 == self->selectedIndex ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    self->selectedIndex = (ColorOptions)((NSInteger)indexPath.row) + 1;
    NSString* message = [NSString stringWithFormat:@"You selected option %i", (int)indexPath.row + 1];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Selected" message:message delegate:nil cancelButtonTitle:@"Cool!" otherButtonTitles:nil];
    [alert show];
}

-(void)displayOtherPossibility
{
    UIViewController* viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Test"];
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self.navigationController presentViewController:navigation animated:YES completion:nil];
}

@end
