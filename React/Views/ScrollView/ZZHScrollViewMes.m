//
//  ZZHScrollViewMes.m
//  React
//
//  Created by 张作华 on 2018/2/24.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ZZHScrollViewMes.h"

@implementation ZZHScrollViewMes
RCT_EXPORT_MODULE(ZZHScrollViewMes)
//https://github.com/facebook/react-native/issues/15421 不创建单例报错_bridge未创建
+ (id)allocWithZone:(NSZone *)zone {
  static ZZHScrollViewMes *sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [super allocWithZone:zone];
  });
  return sharedInstance;
}
- (NSArray<NSString *> *)supportedEvents
{
  return @[@"ZZHrefreshing"];
}

-(void)isRefreshing:(NSString*)refreshStatus
{
  [self sendEventWithName:@"ZZHrefreshing"
                     body:@{
                            @"result": refreshStatus,
                            }];
}
@end
