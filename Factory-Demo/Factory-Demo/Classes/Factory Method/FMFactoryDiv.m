//
//  FMFactoryDiv.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "FMFactoryDiv.h"
#import "FMOperationDiv.h"

@implementation FMFactoryDiv

+ (FMOperation *)createOperation {
    return [FMOperationDiv new];
}

@end
