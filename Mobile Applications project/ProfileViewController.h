//
//  ProfileViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController
- (IBAction)editbuttonPressed:(id)sender;
- (IBAction)viewmodulesbuttonPressed:(id)sender;

- (IBAction)donebuttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *courseLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *courseTextField;
@property (weak, nonatomic) IBOutlet UILabel *homeLabel;
@property (weak, nonatomic) IBOutlet UILabel *workLabel;
@property (weak, nonatomic) IBOutlet UITextField *hometextField;
@property (weak, nonatomic) IBOutlet UITextField *workTextField;
@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UIButton *viewmodulesButton;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UITextField *home2TextField;
@property (weak, nonatomic) IBOutlet UITextField *work2TextField;
@property (weak, nonatomic) IBOutlet UILabel *work2Label;
@property (weak, nonatomic) IBOutlet UILabel *home2Label;
- (IBAction)loadprofile:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loadprofile;

@end
