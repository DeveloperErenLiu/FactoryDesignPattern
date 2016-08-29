//
//  SFFactory.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "SFFactory.h"

#import "SFOperationAdd.h"
#import "SFOperationSub.h"
#import "SFOperationMul.h"
#import "SFOperationDiv.h"

@implementation SFFactory

/** 
 然而下面的方法，并不符合设计模式的开闭原则。在需求发生改变时，例如增加了一种新算法，方法内部还需要修改。
 */
+ (SFOperation *)createOperationWithType:(NSString *)type {
    
    if ([kSFOperationAdd isEqualToString:type]) {
        return [SFOperationAdd new];
    }
    else if ([kSFOperationSub isEqualToString:type]) {
        return [SFOperationSub new];
    }
    else if ([kSFOperationMul isEqualToString:type]) {
        return [SFOperationMul new];
    }
    else if ([kSFOperationDiv isEqualToString:type]) {
        return [SFOperationDiv new];
    }
    return nil;
}

/** 
 在上面方法中，很多代码都是重复的，所以可以通过反射机制，来完成抽象子类的创建。这样在需求发生改变时，内部不需要发生改变，符合开闭原则。
 这种实现方式，需要外界定义的静态变量的值和类名相同，
 */
+ (SFOperation *)createOperationWithType2:(NSString *)type {
    return [NSClassFromString(type) new];
}

@end
















