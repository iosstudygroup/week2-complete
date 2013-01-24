//
//  TMAppDelegate.h
//  Temperatures
//
//  Created by Michele Titolo on 1/24/13.
//  Copyright (c) 2013 Michele Titolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TMViewController;

@interface TMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TMViewController *viewController;

@end
