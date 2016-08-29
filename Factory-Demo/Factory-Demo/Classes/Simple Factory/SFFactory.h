//
//  SFFactory.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFOperation.h"

/** 
 下面定义了四个静态变量，这四个静态变量声明了创建抽象子类的类型
 静态变量尽量定义集中一些，方便维护和查找
 */
static NSString *kSFOperationAdd = @"SFOperationAdd";
static NSString *kSFOperationSub = @"SFOperationSub";
static NSString *kSFOperationMul = @"SFOperationMul";
static NSString *kSFOperationDiv = @"SFOperationDiv";

/** 
 简单工厂类，工厂类的职责就是根据外界需要，创建对应的抽象子类实例并返回给外界
 */
@interface SFFactory : NSObject

/** 
 工厂类的工厂方法，根据外界传进来的字符串，创建对应的抽象子类返回给外界
 */
+ (SFOperation *)createOperationWithType:(NSString *)type;

@end
