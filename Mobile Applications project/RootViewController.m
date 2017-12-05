//
//  RootViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 05/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //notify the root view whwne the button is pressed
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeView1:) name:@"notifyButtonPressed0" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeView2:) name:@"notifyButtonPressed1" object:nil];
    
    [self changeView1:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Set the content in the new view
-(void) setContent:(UIViewController *)content{
    // check for existing content
    if (self.content) {
        //if content exists, remove it
        [_content.view removeFromSuperview];
        [_content removeFromParentViewController];
    }
    //now add the new content and display
    _content = content;
    [self addChildViewController:_content];
    [_content didMoveToParentViewController:self];
    [self.view addSubview:_content.view];
    
}


-(void)changeView1: (id) sender{
    //create access to the next view
    NSString * storyboardName =@"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"View1"];
    
    NSLog(@"Button 1 pressed");
    //set the contents of the declared UIviewController to be the assigned view
    self.content= vc;
    
    //this sets the size and position of the new view content
    self.content.view.frame = CGRectMake(0, 65, 375, 800);
}

-(void)changeView2: (id) sender{
    //create access to the next view
    NSString * storyboardName =@"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"View2"];
    
    NSLog(@"Button 2 pressed");
    //set the contents of the declared UIviewController to be the assigned view
    self.content= vc;
    
    //this sets the size and position of the new view content
    self.content.view.frame = CGRectMake(10, 65, 375, 800);
}

-(void) dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
