//
//  AFUserInfo.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFUser.h"

/**
 “用户”抽象类，声明“用户”抽象子类可以做什么
 */
@interface AFUserInfo : NSObject
- (void)setUserName:(AFUser *)name;
@end
