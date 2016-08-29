//
//  AFSearchInfo.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFCity.h"

/**
 “搜索”抽象类，声明“搜索”抽象子类可以做什么
 */
@interface AFSearchInfo : NSObject
- (void)setSearchCity:(AFCity *)city;
@end
