//
//  AFFactory.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFUserInfo.h"
#import "AFSearchInfo.h"
#import "AFSettingsInfo.h"

/** 
 抽象工厂类，声明创建不同系列抽象子类的方法，由每个系列对应的工厂子类实现具体的创建操作。
 */
@interface AFFactory : NSObject

- (AFUserInfo *)createUserInfo;
- (AFSearchInfo *)createSearchInfo;
- (AFSettingsInfo *)createSettingsInfo;

@end
