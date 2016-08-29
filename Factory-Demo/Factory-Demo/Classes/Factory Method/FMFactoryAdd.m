//
//  FMFactoryAdd.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "FMFactoryAdd.h"
#import "FMOperationAdd.h"

@implementation FMFactoryAdd

+ (FMOperation *)createOperation {
    return [FMOperationAdd new];
}

@end
