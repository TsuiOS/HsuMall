//
//  XNBaseNavController.m
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import "XNBaseNavController.h"

@interface XNBaseNavController ()

@end

@implementation XNBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = DEFAULT_BACKGROUND_COLOR;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        
        // 自动隐藏和显示 tabbar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
}

@end
