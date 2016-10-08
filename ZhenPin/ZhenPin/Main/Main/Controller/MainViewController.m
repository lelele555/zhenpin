//
//  MainViewController.m
//  SSTGood
//
//  Created by qianfeng on 16/10/8.
//  Copyright © 2016年 chenxiang. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "BrandViewController.h"
#import "CateViewController.h"
#import "CarViewController.h"
#import "MyViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeViewController *homeC=[[HomeViewController alloc]init];
    BrandViewController *brandC=[[BrandViewController alloc]init];
    CateViewController *categoryC=[[CateViewController alloc]init];
    CarViewController *shopCarC=[[CarViewController alloc]init];
    MyViewController *myC=[[MyViewController alloc]init];
    
    NSArray *arr=@[@[@"tab_1",@"tab_1p",homeC,@"首页"],@[@"tab_2",@"tab_2p",brandC,@"品牌"],@[@"tab_3",@"tab_3p",categoryC,@"分类"],@[@"tab_4",@"tab_4p",shopCarC,@"购物车"],@[@"tab_0",@"tab_0p",myC,@"我的"]];
    for(int i=0;i<[arr count];i++){
        
        UIViewController *vc=arr[i][2];
        vc.tabBarItem=[[UITabBarItem alloc]initWithTitle:arr[i][3] image:[[UIImage imageNamed:arr[i][0]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:arr[i][1]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        UINavigationController *navC=[[UINavigationController alloc]initWithRootViewController:vc];
        vc.navigationItem.title=arr[i][3];
        [self addChildViewController:navC];
    }
}



@end
