//
//  SFOperationDiv.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "FMOperationDiv.h"

@implementation FMOperationDiv

- (CGFloat)getResult {
    if (self.numberTwo == 0) {
        NSLog(@"除数不能为零");
        return 0;
    }
    else {
        return self.numberOne / self.numberTwo;
    }
}

@end
