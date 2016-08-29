//
//  SFOperation.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

/** 
 抽象类
 */
@interface FMOperation : NSObject
@property (nonatomic, assign) CGFloat numberOne;
@property (nonatomic, assign) CGFloat numberTwo;

/** 
 抽象方法
 */
- (CGFloat)getResult;

@end
