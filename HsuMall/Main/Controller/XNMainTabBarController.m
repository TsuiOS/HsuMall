//
//  XNMainTabBarController.m
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import "XNMainTabBarController.h"
#import "XNBaseNavController.h"
#import "XNHomeViewController.h"
#import "XNCategoryController.h"
#import "XNCampaignController.h"
#import "XNGoodsCarController.h"
#import "XNMineController.h"


@interface XNMainTabBarController ()

@end

@implementation XNMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar setTintColor:kColorOrange];

    //初始化子控制器
    [self addSubControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  初始化所有自控制器
 */
- (void)addSubControllers {
    
    //首页
    XNHomeViewController *home = [[XNHomeViewController alloc]init];
    [self setupChildViewController:home title:@"首页" imageName: @"icon_tab_home" selectedImageName:@"icon_tab_home_active"];
    //分类
    XNCategoryController *category = [[XNCategoryController alloc]init];
    [self setupChildViewController:category title:@"分类" imageName:@"icon_tab_category" selectedImageName:@"icon_tab_category_active"];
    //大作战
    XNCampaignController *campaign = [[XNCampaignController alloc]init];
    [self setupChildViewController:campaign title:@"大作战" imageName:@"icon_tab_presale" selectedImageName:@"icon_tab_presale_active"];
    //购物车
    XNGoodsCarController *goodsCar = [[XNGoodsCarController alloc]init];
    [self setupChildViewController:goodsCar title:@"购物车" imageName: @"icon_tab_shopcart" selectedImageName:@"icon_tab_shopcart_active"];
    //会员中心
    XNMineController *profile = [[XNMineController alloc]init];
    [self setupChildViewController:profile title:@"我的" imageName: @"icon_tab_mine" selectedImageName:@"icon_tab_mine_active"];
    
}
/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    
    //1.设置子控制器的文字
    childVc.title = title;
    //2.设置图标
    childVc.tabBarItem.image = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置选中状态的图标
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //3.包装成一个导航控制器
    XNBaseNavController *nav = [[XNBaseNavController alloc]initWithRootViewController:childVc];
    
    [self addChildViewController:nav];
    
}


@end
