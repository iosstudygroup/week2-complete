//
//  TMViewController.m
//  Temperatures
//
//  Created by Michele Titolo on 1/24/13.
//  Copyright (c) 2013 Michele Titolo. All rights reserved.
//

/*
 
 FORMULAS:
 °C  x  9/5 + 32 = °F
 (°F  -  32)  x  5/9 = °C
 
 */

#define kTempConstant       32
#define kTempRatio          (5.0f/9.0f)

#import "TMViewController.h"

@interface TMViewController ()

- (void)processTemperatureConversionFromFtoC:(BOOL)fToC;

@end

@implementation TMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goPressed:(id)sender
{
    [self processTemperatureConversionFromFtoC:self.convertSegControl.selectedSegmentIndex == 0 ? YES :NO];
}

- (void)processTemperatureConversionFromFtoC:(BOOL)fToC
{
    [self.temperatureTextField resignFirstResponder];
    
    float startingTemp = [self.temperatureTextField.text floatValue];
    
    float endTemp = 0.0f;
    
    if (fToC) {
        endTemp = (startingTemp - kTempConstant) * kTempRatio;
    }
    else {
        endTemp = startingTemp * (1/kTempRatio) + kTempConstant;
    }
    
    
    NSLog(@"Ending temperature: %0.2f", endTemp);
    
    self.outputLabel.text = [NSString stringWithFormat:@"%0.2f", endTemp];


    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    
    dispatch_async(queue, ^{
        // Call your data processing
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            // Call back to the main thread
            
        });
    });
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString* newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    if (![newString floatValue]) {
        return NO;
    }
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self processTemperatureConversionFromFtoC:self.convertSegControl.selectedSegmentIndex == 0 ? YES :NO];
    return YES;
}

@end
