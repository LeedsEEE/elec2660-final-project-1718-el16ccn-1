//
//  PlannerViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSArray * createdAt;
extern NSArray * pDate;


@interface PlannerViewController : UIViewController

- (IBAction)nextAct:(id)sender;


- (IBAction)prevAct:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel * monthly;

//@property (weak, nonatomic) IBOutlet UILabel * MON;
//@property (weak, nonatomic) IBOutlet UILabel * TUE;
//@property (weak, nonatomic) IBOutlet UILabel * WED;
//@property (weak, nonatomic) IBOutlet UILabel * THU;
//@property (weak, nonatomic) IBOutlet UILabel * FRI;
//@property (weak, nonatomic) IBOutlet UILabel * SAT;
//@property (weak, nonatomic) IBOutlet UILabel * SUN;


@end
