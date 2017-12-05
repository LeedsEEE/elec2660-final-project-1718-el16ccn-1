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
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addtaskbuttonPressed:(id)sender {
    
    //First save string
    NSString *saveString = _taskTextLabel.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:saveString forKey:@"saveString"];
    [defaults synchronize];
    _loaded.text = @"Data loaded successfully";
    
    
}

- (IBAction)donebuttonPressed:(id)sender {
   // _taskLabel.text=_taskTextLabel.text;
    
    //first load string
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"saveString"];
    [_taskTextLabel setText:loadstring];
    [_loaded setText:@"data loaded successfully"];
    
    
}
@end
