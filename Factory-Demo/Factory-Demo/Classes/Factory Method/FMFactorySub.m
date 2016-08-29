//
//  FMFactorySub.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "FMFactorySub.h"
#import "FMOperationSub.h"

@implementation FMFactorySub

+ (FMOperation *)createOperation {
    return [FMOperationSub new];
}

@end
