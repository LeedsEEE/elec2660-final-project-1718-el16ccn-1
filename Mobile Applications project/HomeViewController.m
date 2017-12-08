//
//  HomeViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _deadlines2textfield.hidden = true;
    _deadlines3textfield.hidden = true;
    _deadlines1textfield.hidden = false;
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

- (IBAction)addPressed:(id)sender {
    if (_deadlines2textfield.hidden==true) {
        _deadlines2textfield.hidden=false;
    }
    _textView.text = _deadlines1textfield.text;
}

- (IBAction)deletePressed:(id)sender {
}
@end
