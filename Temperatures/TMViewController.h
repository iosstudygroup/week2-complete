//
//  TMViewController.h
//  Temperatures
//
//  Created by Michele Titolo on 1/24/13.
//  Copyright (c) 2013 Michele Titolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (weak, nonatomic) IBOutlet UIButton *farenheightButton;
@property (weak, nonatomic) IBOutlet UIButton *celsiusButton;
- (IBAction)convertFToCPressed:(id)sender;
- (IBAction)convertCToFPressed:(id)sender;

@end
