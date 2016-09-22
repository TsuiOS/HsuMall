//
//  XNHomeViewController.m
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import "XNHomeViewController.h"
#import "XNHomeModel.h"
#import <MJExtension.h>

@interface XNHomeViewController ()
//@property (nonatomic, strong) NSArray *model;

@end

@implementation XNHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[XNNetworkTools sharedTools]loadHomePageFinished:^(NSDictionary *result, NSError *error) {
        
        if (error) {
            return;
        }
        XNHomeModel *model = [XNHomeModel mj_objectWithKeyValues:result];
        XNHomeData *data = model.data;
        XNBanner *banner = data.banner[0];
        NSLog(@"%@",banner.name);
        
    
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
