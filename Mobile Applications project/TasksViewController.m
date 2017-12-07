//
//  TasksViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 05/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "TasksViewController.h"

@interface TasksViewController ()

@end

@implementation TasksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayData = [[NSMutableArray alloc] init];
    arraytodelete = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //display amount or rows in array data
    if (arrayData.count>0) {
        return arrayData.count;
    }
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    //display data on table view
    
    cell.tintColor= [UIColor redColor];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrayData[indexPath.row]];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //put data in arraytoDelete
    [arraytodelete addObject:arrayData[indexPath.row]];
    
}

-(void)tableView:(UITableView *)tableView didDeSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //if row deselected, remove from arraytoDelete
    [arraytodelete removeObject:arrayData[indexPath.row]];
    
}


-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    //return 3 provides style with checkmarks
    //return 2 provides style with insert
    //return 1 provide style for delete opertation individually
    return 3;
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addButtonPressed:(id)sender {
    //add text in textfield to array data
    
    [arrayData addObject: self.tasksTextField.text];
    [self.tasksTableView reloadData];
    self.tasksTextField.text = @"";
    
    
}

- (IBAction)deleteButtonPressed:(UIButton *)sender {
    //provide action with selected method of uibutton
    
    sender.selected = !sender.selected;
    [self.tasksTableView setEditing:sender.selected animated:YES];
    
    if (arraytodelete.count) {
        for (NSString *str in arraytodelete) {
            [arrayData removeObject:str]; //remove the data from the array and hence table view
        }
        [arraytodelete removeAllObjects];
        [self.tasksTableView reloadData];
    }
    
    
}
@end

