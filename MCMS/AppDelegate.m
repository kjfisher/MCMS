//
//  AppDelegate.m
//  MCMS
//
//  Created by Kristen L. Fisher on 5/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "AppDelegate.h"
#import <CheckMate/CheckMate.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [CheckMate initializeFramework:@[@"0c6c0421323770989d12d5ef695da768", @"1c3df2fa1e01ff3649fa04a33e0ff3d9"]];
    // Override point for customization after application launch.
    return YES;
}

@end
