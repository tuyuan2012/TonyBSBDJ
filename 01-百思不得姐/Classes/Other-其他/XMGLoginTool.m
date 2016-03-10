//
//  XMGLoginTool.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/8/6.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGLoginTool.h"
#import "XMGLoginRegisterViewController.h"

@implementation XMGLoginTool

+ (void)setUid:(NSString *)uid
{
    [[NSUserDefaults standardUserDefaults] setObject:uid forKey:@"uid"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)getUid
{
    return [self getUid:NO];
}

+ (NSString *)getUid:(BOOL)showLoginController
{
    NSString *uid = @"110";//[[NSUserDefaults standardUserDefaults] stringForKey:@"uid"];
    
    if (showLoginController) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            XMGLoginRegisterViewController *login = [[XMGLoginRegisterViewController alloc] init];
            [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:login animated:YES completion:nil];
        });
    }
    
    return uid;
}

@end
