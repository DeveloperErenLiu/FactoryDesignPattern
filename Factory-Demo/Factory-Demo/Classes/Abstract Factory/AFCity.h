//
//  AFCity.h
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 
 城市模型类，不属于设计模式的一部分
 */
@interface AFCity : NSObject
@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, copy) NSString *cityCode;
@end
