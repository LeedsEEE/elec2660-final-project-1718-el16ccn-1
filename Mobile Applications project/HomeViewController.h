//
//  HomeViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

- (IBAction)addPressed:(id)sender;
- (IBAction)deletePressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *deadlines1textfield;

@property (weak, nonatomic) IBOutlet UITextField *deadlines2textfield;

@property (weak, nonatomic) IBOutlet UITextField *deadlines3textfield;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
