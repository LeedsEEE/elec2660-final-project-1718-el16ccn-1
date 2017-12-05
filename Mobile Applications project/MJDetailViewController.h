//
//  MJDetailViewController.h
//  CalendarSystem
//
//  Created by Matt Memmo on 8/19/15.
//  Copyright (c) 2015 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJDetailViewController : UIViewController




@property (weak, nonatomic) IBOutlet UILabel *popDate;
- (IBAction)addtaskbuttonPressed:(id)sender;

- (IBAction)donebuttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UITextField *taskTextLabel;

@property (weak, nonatomic) IBOutlet UILabel *loaded;




@end
