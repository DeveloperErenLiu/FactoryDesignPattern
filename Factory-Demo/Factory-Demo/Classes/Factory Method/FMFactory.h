//
//  FMFactory.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMOperation.h"

/** 
 创建抽象工厂类
 */
@interface FMFactory : NSObject

/** 
 在抽象工厂类中声明创建方法，并空实现。
 由抽象工厂子类重写该方法，返回对应的抽象子类。
 */
+ (FMOperation *)createOperation;

@end
