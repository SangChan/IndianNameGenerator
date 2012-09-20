//
//  ViewController.h
//  IndianName
//
//  Created by 이 상찬 on 12. 1. 11..
//  Copyright (c) 2012 KTH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIDatePicker *birthDayPicker;
    NSArray *yearWord;
    NSArray *monthWord;
    NSArray *dayWord;
}

@property (nonatomic, retain) UIDatePicker *birthDayPicker;

-(IBAction)sendButtonTapped:(id)sender;

@end
