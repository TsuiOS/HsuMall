//
//  XNHomeModel.m
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import "XNHomeModel.h"
#import <MJExtension/MJExtension.h>


#pragma mark ================分类商品推荐================
@implementation XNGoods



@end

@implementation XNCatGoods
+ (NSDictionary *)mj_objectClassInArray {
    
    return @{
             @"XNGoods":[XNGoods class]
             };
}


@end
#pragma mark ================活动推荐商品================
@implementation XNGoodsList



@end

@implementation XNActivityGoods

+ (NSDictionary *)mj_objectClassInArray {
    
    return @{
             @"XNGoodsList":[XNGoodsList class]
             };
}

@end
#pragma mark ================Menu================
@implementation XNMenu



@end
#pragma mark ===============广告=================
@implementation XNAds



@end

#pragma mark ===============banner=================
@implementation XNBanner



@end
#pragma mark ==============首页数据==================
@implementation XNHomeData

+ (NSDictionary *)mj_objectClassInArray {
    
    return @{
             @"banner":[XNBanner class],
             @"ad":[XNAds class],
             @"menu":[XNMenu class],
             @"activity_goods":[XNActivityGoods class],
             @"cat_goods":[XNCatGoods class]
             };
}


@end
#pragma mark ================================
@implementation XNHomeModel



@end
