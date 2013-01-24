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

- (IBAction)convertFToCPressed:(id)sender {
    [self processTemperatureConversionFromFtoC:YES];
    
}

- (IBAction)convertCToFPressed:(id)sender {
    
    [self processTemperatureConversionFromFtoC:NO];
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

@end
