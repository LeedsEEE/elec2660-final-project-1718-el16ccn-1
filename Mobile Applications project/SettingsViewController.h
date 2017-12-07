//
//  SettingsViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 01/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "ViewController.h"

@interface SettingsViewController : ViewController


@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@property (weak, nonatomic) IBOutlet UILabel *fromLabel;

@property (weak, nonatomic) IBOutlet UILabel *toLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *datesegmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

- (IBAction)didChangeDate:(UIDatePicker *)sender;

- (IBAction)calculate:(id)sender;





@end
