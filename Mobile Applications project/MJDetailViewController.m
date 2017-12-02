//
//  MJDetailViewController.m
//  CalendarSystem
//
//  Created by Matt Memmo on 8/19/15.
//  Copyright (c) 2015 RWS. All rights reserved.
//

#import "MJDetailViewController.h"
#import "ViewController.h"
extern NSArray * pressedDate;

@interface MJDetailViewController ()

@end

@implementation MJDetailViewController
@synthesize popDate;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    popDate.text=pressedDate[1];
    _taskLabel.text=_taskTextLabel.text;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addtaskbuttonPressed:(id)sender {
}

- (IBAction)donebuttonPressed:(id)sender {
    _taskLabel.text=_taskTextLabel.text;
}
@end
