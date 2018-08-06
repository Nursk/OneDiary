//
//  Saicio.h
//  Saicio
//
//  Created by Mwave_wuyu on 2017/8/2.
//  Copyright © 2017年 blinq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Saicio : NSObject

/**
 启动Saicio
 */
+ (void)startWithAccountId:(NSString *)ai;

/**
 大通初始化接口
 */
+ (void)startWithAi:(NSString *)ai
                aid:(NSString *)aid
            objname:(NSString *)objname
          secretKey:(NSString *)secretKey
                url:(NSString *)url;
/**
 url跳转打开app
 */
+(BOOL)handleUrl:(NSURL *)url;// 请务必确保该函数被调用

//添加计时器
+ (void)createTimer;

/**
 *  停止计时器
 */
+ (void)stopTimer;

/**
 *  暂停
 */
+ (void)pauseTimer;

/**
 *  继续
 */
+ (void)continueTimer;

@end
