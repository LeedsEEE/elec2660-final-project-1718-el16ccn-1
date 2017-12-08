//
//  SettingsViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 01/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
//create properties to hold raw nsdate information
@property (nonatomic, strong)NSDate *fromDate;
@property (nonatomic, strong)NSDate *toDate;

@end

@implementation SettingsViewController

@synthesize fromDate, toDate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //define fromDate and toDate variables
    //define format needed for date
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    //set format
    [formatter setDateFormat:@"EEE, MMM d, ''yy"];
    
    //define time zone
    [formatter setTimeZone: [NSTimeZone localTimeZone]];
    
    
    //set property of two text fields to current date as default setting for when view controller first loads
    //create strings, convert nsdates to strings
    NSString *fromDateString = [formatter stringFromDate:self.datePicker.date];
    
    NSString *toDateString = [formatter stringFromDate:self.datePicker.date];
    
    //set text properties to strings above
    _fromLabel.text = fromDateString;
    _toLabel.text = toDateString;
    
    //set initial dates
    fromDate = self.datePicker.date;
    toDate = self.datePicker.date;
    
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

- (IBAction)didChangeDate:(UIDatePicker *)sender {
    
    //update text fields and date variables each time user changes date picker
    //make changes based on segmented control position
    //from: fromDate, to: toDate
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEE, MMM d, ''yy"];
    [formatter setTimeZone: [NSTimeZone localTimeZone]];
    
    //only single string needed
   
    NSString *formattedDate = [formatter stringFromDate:self.datePicker.date];
    
    // switch statement used
    //switch on selected segment index
    switch (self.datesegmentedControl.selectedSegmentIndex) {
        case 0:
            _fromLabel.text = formattedDate;
            fromDate = self.datePicker.date;
            break;
        case 1:
            _toLabel.text = formattedDate;
            toDate = self.datePicker.date;
        default:
            break;
    }
    
    
}

- (IBAction)calculate:(id)sender {
    //define calendar being used
    //gregorian calendar
    
    NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    //define calendar unit working with using flags
    //working with days unit
    //use unsigned integer which only represents positive integers
    
    unsigned int unitFlag = NSCalendarUnitDay;
    
    //split dates out into components
    //use flag to tell method working with the day calendat unit
    
    NSDateComponents *components = [calendar components:unitFlag fromDate:fromDate toDate:toDate options:0];
    
    //create integer to hold number of days value
    int days = [components day];
    
    //assign information extracted to textbox
    self.answerLabel.text = [NSString stringWithFormat:@"Days to Deadline is %i",days];
    
    
    
    
    
    
}
@end
