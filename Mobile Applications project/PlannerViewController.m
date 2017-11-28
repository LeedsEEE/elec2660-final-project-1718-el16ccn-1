//
//  PlannerViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "PlannerViewController.h"
#import "UIViewController+MJPopupViewController.h"
#import "MJDetailViewController.h"

@interface PlannerViewController ()

@end

NSUInteger numberofDays;//1-31
int thisYear;//2017
int weekday;//1-7 When does 1st day of month start
int thisMonth;//1-12

NSArray * createdAt;
NSArray * pDate;

@implementation PlannerViewController
@synthesize monthly;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // [self grabData];
    [self myCalView];

}

//Next and Prevoius buttons

- (IBAction)nextAct:(id)sender {
    thisMonth++;
    [self removeTags];
    [self updateCalNow];
}

- (IBAction)prevAct:(id)sender {
    thisMonth--;
    [self removeTags];
    [self updateCalNow];
}


//Remone each button from screen when month changes. This is to ensure alignment as not all months have the same number of days.

-(void) removeTags{
    int x=1;
    while (x<=31){
        [[self.view viewWithTag:x] removeFromSuperview];
        x++;
    }
    
}

//returns the number of days in the month in the date it is sent

-(NSUInteger) getCurrDateInfo:(NSDate *)myDate{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSRange rng = [cal rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:myDate];
    NSUInteger numberOfDaysInMonth = rng.length;
    
    return numberOfDaysInMonth;
}


-(void)myCalView{
    
    ///numberofDays=[self getCurrDateInfo:[NSDate date]];
    
    thisYear = [[[NSCalendar currentCalendar]
                 components:NSCalendarUnitYear fromDate:[NSDate date]]
                year];
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *comps2 = [cal components:NSCalendarUnitMonth fromDate:[NSDate date]];
    thisMonth=[comps2 month];
    
    
    [self moreDateInfo];
    
}

-(void)updateCalNow{// try to condense this so only one method is used instead of two
    if(thisMonth>12){
        thisMonth=1;
        thisYear++;
    }
    
    if(thisMonth<1){
        thisMonth=12;
        thisYear--;
    }
    
    
    
    [self moreDateInfo];
    
}

-(void)moreDateInfo{
    
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    //get first day of the month determined previously
    // to determine where to start first button
    
    
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    //Create NS calendar object using components
    //create new date to get weekday.
    
    [components setDay:1]; //looking at 1st day of month
    [components setMonth:thisMonth];
    [components setYear:thisYear];
    NSDate * newDate = [calendar  dateFromComponents:components]; //creating new date from components
    NSDateComponents *comps = [gregorian components:NSCalendarUnitWeekday fromDate:newDate];
    weekday=[comps weekday]; //gives number between 1-7 and tells us day of the week (if day is monday or tuesday, etc)
    
    //Get number of days in the month
    numberofDays=[self getCurrDateInfo:newDate];
    
    
    
    int newWeekDay=weekday-1;//make weekday zero based
    
    NSLog(@"Day week %d",newWeekDay);
    
    //coordinates for displaying the buttons on calender
    int yVal=175;
    int yCount=1;
    
    //Display name of month
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSLog(@"%@",[[formatter monthSymbols] objectAtIndex:(thisMonth - 1)]);
    monthly.text=[[formatter monthSymbols] objectAtIndex:(thisMonth - 1)];

    
    //use for loop to display each day
    
    for(int startD=1; startD<=numberofDays;startD++){
        UIButton *addProject = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
        int xCoord=(newWeekDay*40)+70;
        int yCoord=(yCount*30)+yVal;
        
        newWeekDay++;
        if(newWeekDay>6){//drops buttons on y axis every 7 days
            newWeekDay=0;
            yCount++;
        }
        //Creates the buttons and gives them each a tag to help identify them later (id)
        int popInt=startD;
        addProject.frame = CGRectMake(xCoord, yCoord, 35, 25);
        [addProject setTitle:[NSString stringWithFormat:@"%d", startD] forState:UIControlStateNormal];
        [addProject addTarget:self action:@selector(popupInfo:) forControlEvents:UIControlEventTouchUpInside];
        [addProject setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        addProject.tag = startD;
        
        [self.view addSubview:addProject];
    }
    
}


-(void) popupInfo: (id) sender {
    UIButton* btn = (UIButton *) sender;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:[btn.currentTitle integerValue]];
    [components setMonth:thisMonth];
    [components setYear:thisYear];
    NSDate * newDate = [calendar dateFromComponents:components];
    //Formats date to YYYY-MM-DD
    NSDateFormatter * dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    
    
    
    //POPUP SCREEN
    
    
    MJDetailViewController *detailViewController = [[MJDetailViewController alloc] initWithNibName:@"MJDetailViewController" bundle:nil];
    
    [self presentPopupViewController:detailViewController animationType:MJPopupViewAnimationFade];
    
    
    
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

@end
