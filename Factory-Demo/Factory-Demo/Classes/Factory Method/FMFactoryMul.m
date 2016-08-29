//
//  FMFactoryMul.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "FMFactoryMul.h"
#import "FMOperationMul.h"

@implementation FMFactoryMul

+ (FMOperation *)createOperation {
    return [FMOperationMul new];
}

@end
