//
//  modulesTableViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 02/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "modulesTableViewController.h"
#import "modulesinfoViewController.h"

@interface modulesTableViewController ()

@end

@implementation modulesTableViewController

@synthesize array;

- (void)viewDidLoad {
    [super viewDidLoad];
    array=@[@"yolo",@"hyfr"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text= [array objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *path= [self.tableView indexPathForSelectedRow];
    modulesinfoViewController *vc;
    vc = [segue destinationViewController];
    vc.intLabel = path.row;
    
    
}


@end
