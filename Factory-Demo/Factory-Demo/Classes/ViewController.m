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

#import "AFUser.h"
#import "AFCity.h"
#import "AFFactory.h"
#import "AFSqliteFactory.h"
#import "AFUserInfo.h"
#import "AFSearchInfo.h"
#import "AFSettingsInfo.h"

/** 
 这个Demo工程对应工厂模式系列文章，包括简单工厂、工厂方法、抽象工厂三种设计模式。
 由于三种设计模式需要创建大量类文件，为了区分三种设计模式的类，所以用模式缩写前缀作区分。例如Simple Factory模式，用SF做前缀。
 */

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
    
    /** 
     抽象工厂模式包含四部分：
     * 抽象工厂类：定义创建抽象子类的具体行为，根据系列中不同类型的抽象子类可能会有多种行为。
     * 工厂子类：继承自抽象工厂类，根据当前抽象子类对应的系列，重写父类定义的对应行为。对应的抽象子类系列不同，行为的实现方式也不同。
     * 抽象类：定义当前类型抽象子类的操作，子类继承父类完成具体的操作。在抽象工厂模式中，可能会有多种抽象类的定义。
     * 抽象子类：根据当前类型继承自对应的抽象类，并根据系列的不同重写抽象类定义的实现。
     */
    
    /** 
     抽象工厂模式和其名字一样，理解起来非常抽象。在抽象工厂模式中存在一系列的抽象类和抽象子类，由当前系列对应的工厂子类进行实例化。抽象工厂讲起来比较复杂，具体还是看博客更加详细。
     在Demo中体现了本地持久化方式的切换需求，分别对应着SQLite系列和CoreData系列。
     */
    
    /** 
     抽象工厂模式虽然复杂，但是功能很强大。在Demo的例子中，一个项目中一般只会同时存在一种主流持久化方式，所以可以通过typedef定义工厂类“别名”的方式，实现一行代码切换整个项目的持久化存储方案，具体实现方式文章中有讲。
     */
    
    AFUser *user = [AFUser new];
    AFCity *city = [AFCity new];
    
    AFFactory *factory           = [AFSqliteFactory new];
    AFUserInfo *userInfo         = [factory createUserInfo];
    AFSearchInfo *searchInfo     = [factory createSearchInfo];
    AFSettingsInfo *settingsInfo = [factory createSettingsInfo];
    
    [userInfo setUserName:user];
    [searchInfo setSearchCity:city];
    [settingsInfo resetAllSettings];
}

@end






































