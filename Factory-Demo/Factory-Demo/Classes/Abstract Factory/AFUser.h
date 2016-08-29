//
//  AFUser.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 
 用户模型类，不属于设计模式的一部分
 */
@interface AFUser : NSObject
@property (nonatomic, copy  ) NSString  *userName;
@property (nonatomic, assign) NSInteger userAge;
@end
