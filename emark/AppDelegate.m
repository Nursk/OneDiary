//
//  AppDelegate.m
//  emark
//
//  Created by neebel on 2017/5/27.
//  Copyright © 2017年 neebel. All rights reserved.
//

#import "AppDelegate.h"
#import "EMAlertManager.h"
#import "Saicio.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [Saicio startWithAi:@"123456" aid:@"10001" objname:@"appdata" secretKey:@"2d941cb32efca837" url:@"https://dmp.maxuscloud.com/!/data-assets/api/objdata/record"];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [self registerLocalNotification];//注册本地通知
    [[EMAlertManager sharedManager] didFinishLaunchingWithOptions:launchOptions];
    return YES;
}


- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    [[EMAlertManager sharedManager] didReceiveLocalNotification:notification];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [Saicio pauseTimer];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [Saicio continueTimer];
}

- (void)registerLocalNotification
{
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(registerUserNotificationSettings:)])
    {
        UIUserNotificationSettings *setting = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge|UIUserNotificationTypeSound|UIUserNotificationTypeAlert categories:nil];
        [[UIApplication sharedApplication] registerUserNotificationSettings:setting];
    }
}

@end
