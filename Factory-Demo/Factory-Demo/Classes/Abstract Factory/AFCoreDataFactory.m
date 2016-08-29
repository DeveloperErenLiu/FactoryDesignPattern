//
//  AFCoreDataFactory.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "AFCoreDataFactory.h"

#import "AFCoreDataUserInfo.h"
#import "AFCoreDataSearchInfo.h"
#import "AFCoreDataSettingsInfo.h"

@implementation AFCoreDataFactory

- (AFUserInfo *)createUserInfo {
    return [AFCoreDataUserInfo new];
}

- (AFSearchInfo *)createSearchInfo {
    return [AFCoreDataSearchInfo new];
}

- (AFSettingsInfo *)createSettingsInfo {
    return [AFCoreDataSettingsInfo new];
}

@end
