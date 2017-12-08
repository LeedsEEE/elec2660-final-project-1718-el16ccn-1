//
//  modulesbuttonViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 08/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface modulesbuttonViewController : UIViewController

- (IBAction)viewaddbuttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *doneeditingButton;
@property (weak, nonatomic) IBOutlet UIButton *editButton;
- (IBAction)doneeditingButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *module1nameTextfield;

@property (weak, nonatomic) IBOutlet UITextField *module1codeTextField;
@property (weak, nonatomic) IBOutlet UITextField *module1creditsTextField;
@property (weak, nonatomic) IBOutlet UILabel *module1assessmentLabel;
@property (weak, nonatomic) IBOutlet UITextView *module1assessmentTextView;
@property (weak, nonatomic) IBOutlet UITextField *modulelecturerTextField;


- (IBAction)loadmodulesButtonpressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loadButton;



@property (weak, nonatomic) IBOutlet UITextField *module2nameTextfield;

@property (weak, nonatomic) IBOutlet UITextField *module2codeTextField;
@property (weak, nonatomic) IBOutlet UITextField *module2creditsTextField;
@property (weak, nonatomic) IBOutlet UILabel *module2assessmentLabel;
@property (weak, nonatomic) IBOutlet UITextView *module2assessmentTextView;
@property (weak, nonatomic) IBOutlet UITextField *module2lecturerTextField;


@property (weak, nonatomic) IBOutlet UITextField *module3nameTextfield;

@property (weak, nonatomic) IBOutlet UITextField *module3codeTextField;
@property (weak, nonatomic) IBOutlet UITextField *module3creditsTextField;
@property (weak, nonatomic) IBOutlet UILabel *module3assessmentLabel;
@property (weak, nonatomic) IBOutlet UITextView *module3assessmentTextView;
@property (weak, nonatomic) IBOutlet UITextField *module3lecturerTextField;








@end
