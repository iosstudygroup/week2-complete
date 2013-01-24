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
    [self.temperatureTextField resignFirstResponder];
    
    float startFTemp = [self.temperatureTextField.text floatValue];
    
    float endTemp = (startFTemp - kTempConstant) * kTempRatio;
    
    NSLog(@"Ending temperature in C: %0.2f", endTemp);
    
    self.outputLabel.text = [NSString stringWithFormat:@"%0.2f", endTemp];
    
}

- (IBAction)convertCToFPressed:(id)sender {
    [self.temperatureTextField resignFirstResponder];
    
    float startCTemp = [self.temperatureTextField.text floatValue];
    
    float endTemp = startCTemp * (1/kTempRatio) + kTempConstant;
    
    NSLog(@"Ending temperature in F: %0.2f", endTemp);
    
    self.outputLabel.text = [NSString stringWithFormat:@"%0.2f", endTemp];
}
@end
