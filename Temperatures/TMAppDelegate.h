//
//  TMAppDelegate.h
//  Temperatures
//
//  Created by Michele Titolo on 1/24/13.
//  Copyright (c) 2013 Michele Titolo. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 Our AppDelegate. This will create the main view controller, and the application's window.
 */
@class TMViewController;

@interface TMAppDelegate : UIResponder <UIApplicationDelegate>

/**
 @name Properties
 */

/**
 The application window, created in `application:didFinishLaunchingWithOptions:`.
 */
@property (strong, nonatomic) UIWindow *window;

/**
 The root view controller of our window. Created in `application:didFinishLaunchingWithOptions:`.
 */

@property (strong, nonatomic) TMViewController *viewController;

@end
