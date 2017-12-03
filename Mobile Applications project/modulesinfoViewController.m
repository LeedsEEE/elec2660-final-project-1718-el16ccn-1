//
//  modulesinfoViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 02/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "modulesinfoViewController.h"

@interface modulesinfoViewController ()

@end

@implementation modulesinfoViewController

@synthesize label, intLabel;

- (void)viewDidLoad {
    
    if (intLabel==0) {
        label.text= _moduletextField.text;
    }
    else if (intLabel==1) {
        label.text= _moduletextField.text;
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)modulesdonebuttonPressed:(id)sender {
    self.label.text = _moduletextField.text;
}
@end
