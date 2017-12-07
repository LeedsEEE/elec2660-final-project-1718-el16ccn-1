//
//  TasksViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 05/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TasksViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *arrayData;
    NSMutableArray *arraytodelete;
    
}



@property (weak, nonatomic) IBOutlet UITextField *tasksTextField;


- (IBAction)addButtonPressed:(id)sender;

- (IBAction)deleteButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tasksTableView;


@end
