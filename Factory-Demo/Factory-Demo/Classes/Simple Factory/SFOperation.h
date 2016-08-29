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
 首先定义抽象类，抽象类中将会包含参与运算的抽象子类的属性和行为(方法)
 */
@interface SFOperation : NSObject
@property (nonatomic, assign) CGFloat numberOne;
@property (nonatomic, assign) CGFloat numberTwo;

/** 
 定义在抽象类中的抽象方法，通过抽象方法获取最后结果
 */
- (CGFloat)getResult;

@end
