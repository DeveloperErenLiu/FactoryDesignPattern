//
//  AFSqliteFactory.m
//  Factory-Demo
//
//  Created by 刘小壮 on 16/8/29.
//  Copyright © 2016年 刘小壮. All rights reserved.
//

#import "AFSqliteFactory.h"

#import "AFSqliteUserInfo.h"
#import "AFSqliteSearchInfo.h"
#import "AFSqliteSettingsInfo.h"

@implementation AFSqliteFactory

- (AFUserInfo *)createUserInfo {
    return [AFSqliteUserInfo new];
}

- (AFSearchInfo *)createSearchInfo {
    return [AFSqliteSearchInfo new];
}

- (AFSettingsInfo *)createSettingsInfo {
    return [AFSqliteSettingsInfo new];
}

@end
