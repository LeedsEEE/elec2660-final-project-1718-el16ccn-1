//
//  modulesinfoViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 02/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface modulesinfoViewController : UIViewController

@property NSInteger intLabel;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *moduletextField;
- (IBAction)modulesdonebuttonPressed:(id)sender;

@end
