//
//  ViewController.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "ViewController.h"

#import "SFFactory.h"
#import "SFOperation.h"

#import "FMFactoryAdd.h"
#import "FMOperation.h"

@implementation ViewController

/** 
 简单工厂模式
 */
- (IBAction)simpleFactoryAction:(UIButton *)sender {
    
    /** 
     简单工厂模式主要包含三部分：
     * 工厂类：根据外界的需求，决定创建并返回哪个具体的抽象子类。
     * 抽象类：定义抽象子类所需的属性和方法，子类通过继承自抽象类获得这些方法。
     * 抽象子类：继承自抽象类，是具体操作的实现者，根据需求重写父类继承过来的方法。
     */
    
    SFOperation *oper = [SFFactory createOperationWithType:kSFOperationAdd];
    oper.numberOne = 13.f;
    oper.numberTwo = 24.f;
    NSLog(@"result : %f", [oper getResult]);
}

/** 
 工厂方法模式
 */
- (IBAction)factoryMethodAction:(UIButton *)sender {
    
    /** 
     工厂方法模式主要包含四部分：
     * 工厂抽象类：定义创建抽象子类的接口，通过接口返回具体的抽象子类。
     * 工厂子类：继承自工厂抽象类，并重写父类的方法来创建对应的抽象子类。
     * 抽象类：定义抽象子类所需的属性和方法，子类通过继承自抽象类获得这些方法。
     * 抽象子类：继承自抽象类，实现具体的操作。
     */
    
    /** 
     如果不使用OC语言的反射机制，单从设计模式的角度来所，简单工厂模式是不符合开闭原则的。
     所以在简单工厂模式的基础上，又发展出了工厂方法模式。工厂方法模式和简单工厂模式最大的不同在于，每一个抽象类都对应一个工厂类，由外界直接创建不同的工厂类。
     */
    
    FMOperation *oper = [FMFactoryAdd createOperation];
    oper.numberOne = 13.f;
    oper.numberTwo = 24.f;
    NSLog(@"result : %f", [oper getResult]);
}

/** 
 抽象方法模式
 */
- (IBAction)abstructFactoryAction:(UIButton *)sender {
    
}

@end






































