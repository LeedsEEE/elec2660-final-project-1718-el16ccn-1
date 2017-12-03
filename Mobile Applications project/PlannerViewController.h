//
//  PlannerViewController.h
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSArray * createdAt;
extern NSArray * pressedDate;
extern NSString * test;

@interface PlannerViewController : UIViewController

- (IBAction)nextAct:(id)sender;


- (IBAction)prevAct:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel * monthly;



@end
