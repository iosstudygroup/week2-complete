//
//  TMViewController.h
//  Temperatures
//
//  Created by Michele Titolo on 1/24/13.
//  Copyright (c) 2013 Michele Titolo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Our main view controller class. This is the rootViewController of the application's window.
 */
@interface TMViewController : UIViewController <UITextFieldDelegate>

/**
 @name Properties
 */

/**
 The text field to enter our temperature.
 */
@property (weak, nonatomic) IBOutlet UITextField *temperatureTextField;

/**
 The label that will show the temperature output.
 */
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

/**
 The segmented control that determines which conversion to do.
 */
@property (weak, nonatomic) IBOutlet UISegmentedControl *convertSegControl;

/**
 @name IBActions
 */

/**
 This method takes the value in the `temperatureTextField` and will convert it to the selected temperature.
 
 @param sender The sender
 */
- (IBAction)goPressed:(id)sender;

@end
