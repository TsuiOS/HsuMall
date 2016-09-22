//
//  XNHomeModel.h
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark =================分类===============
@interface XNGoods : NSObject

@property (nonatomic,copy) NSString *promote_price;
@property (nonatomic,copy) NSString *id;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *brief;
@property (nonatomic,copy) NSString *short_name;
@property (nonatomic,copy) NSString *market_price;
@property (nonatomic,copy) NSString *shop_price;
@property (nonatomic,copy) NSString *thumb;
@property (nonatomic,copy) NSString *goods_img;

@end

@interface XNCatGoods : NSObject

@property (nonatomic,strong) NSArray *goods;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *id;



@end

#pragma mark =================活动商品===============
@interface XNGoodsList : NSObject

@property (nonatomic,copy) NSString *promote_price;

@property (nonatomic,copy) NSString *id;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *brand_name;
@property (nonatomic,copy) NSString *market_price;
@property (nonatomic,copy) NSString *shop_price;
@property (nonatomic,copy) NSString *thumb;


@end


@interface XNActivityGoods : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) NSArray *goods_list;



@end

#pragma mark =================Menu===============
@interface XNMenu : NSObject
/** 广告位置名 */
@property (nonatomic,copy) NSString *menu_name;
/** url访问地址 */
@property (nonatomic,copy) NSString *menu_url;
/** 图片 */
@property (nonatomic,copy) NSString *menu_img;
/** 访问类型
 url       链接
 goods     商品
 supplier  店铺
 cat       分类
 brand     品牌*/
@property (nonatomic,copy) NSString *type;
/** 访问类型的值 */
@property (nonatomic,copy) NSString *value;

@end

#pragma mark =================广告===============
@interface XNAds : NSObject
/** 广告位置名 */
@property (nonatomic,copy) NSString *name;
/** url访问地址 */
@property (nonatomic,copy) NSString *url;
/** 图片 */
@property (nonatomic,copy) NSString *image;
/** 访问类型
 url       链接
 goods     商品
 supplier  店铺
 cat       分类
 brand     品牌*/
@property (nonatomic,copy) NSString *type;
/** 访问类型的值 */
@property (nonatomic,copy) NSString *value;
@end

#pragma mark =================Banner===============
@interface XNBanner : NSObject

/** banner名 */
@property (nonatomic,copy) NSString *name;
/** url访问地址 */
@property (nonatomic,copy) NSString *url;
/** 图片 */
@property (nonatomic,copy) NSString *image;
/** 访问类型
 url       链接
 goods     商品
 supplier  店铺
 cat       分类
 brand     品牌*/
@property (nonatomic,copy) NSString *type;
/** 访问类型的值 */
@property (nonatomic,copy) NSString *value;



@end

#pragma mark =================首页数据===============
@interface XNHomeData : NSObject

/** 首页广告轮播 */
@property (nonatomic, strong) NSMutableArray *banner;
/** 主页 */
@property (nonatomic, strong) NSMutableArray *ad;
/** 主页广告 */
@property (nonatomic, strong) NSMutableArray *menu;
/** 活动推荐商品 */
@property (nonatomic, strong) NSMutableArray *activity_goods;
/** 分类商品推荐 */
@property (nonatomic, strong) NSMutableArray *cat_goods;

@end


@interface XNHomeModel : NSObject

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, strong) XNHomeData *data;
@end
