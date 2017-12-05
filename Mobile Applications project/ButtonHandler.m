//
//  ButtonHandler.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 05/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "ButtonHandler.h"

@implementation ButtonHandler

-(IBAction)segmentChanged:(id)sender {
    self.segmentControl= sender;
    switch (self.segmentControl.selectedSegmentIndex) {
        case 0:
            [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyButtonPressed0" object:self];
            break;
        case 1:
            [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyButtonPressed1" object:self];
            break;
       /* case 2:
            [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyButtonPressed2" object:self];
            break;*/
            
        default:
            break;
    }
    
    
}

@end
