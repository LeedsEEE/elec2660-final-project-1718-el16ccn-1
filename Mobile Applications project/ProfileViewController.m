//
//  ProfileViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _hometextField.hidden=true;
    _workTextField.hidden=true;
    _nameTextField.hidden=true;
    _courseTextField.hidden=true;
    _doneButton.hidden=true;
    
    
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

- (IBAction)editbuttonPressed:(id)sender {
    self.hometextField.hidden=false;
    self.workTextField.hidden=false;
    self.nameTextField.hidden=false;
    self.courseTextField.hidden=false;
    self.editButton.hidden=true;
    _doneButton.hidden=false;
    self.viewmodulesButton.hidden=true;
    self.settingsButton.hidden=true;
}

- (IBAction)viewmodulesbuttonPressed:(id)sender {
}

- (IBAction)donebuttonPressed:(id)sender {
    self.nameLabel.text= _nameTextField.text;
    self.courseLabel.text= _courseTextField.text;
    self.homeLabel.text= _hometextField.text;
    self.workLabel.text= _workTextField.text;
    
    self.hometextField.hidden=true;
    self.workTextField.hidden=true;
    self.nameTextField.hidden=true;
    self.courseTextField.hidden=true;
    
    _doneButton.hidden=true;
    _editButton.hidden=false;
    self.viewmodulesButton.hidden=false;
    self.settingsButton.hidden=false;
    
}
@end
