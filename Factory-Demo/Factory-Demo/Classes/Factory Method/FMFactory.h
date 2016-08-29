//
//  FMFactory.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMOperation.h"

@interface FMFactory : NSObject

+ (FMOperation *)createOperation;

@end
