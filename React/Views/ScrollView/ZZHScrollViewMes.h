//
//  ZZHScrollViewMes.h
//  React
//
//  Created by 张作华 on 2018/2/24.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "RCTEventEmitter.h"

@interface ZZHScrollViewMes : RCTEventEmitter<RCTBridgeModule>  
-(void)isRefreshing:(NSString*)refreshStatus ;
@end
