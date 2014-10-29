//
//  CAppDelegate.h
//  ExampleProject
//
//  Created by Jin  on 10/2/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import <UIKit/UIKit.h>

#define APPDELEGATE ((MAAppDelegate *)[[UIApplication sharedApplication] delegate])

@class MAUser;

@interface MAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MAUser *currentUser;

@end
