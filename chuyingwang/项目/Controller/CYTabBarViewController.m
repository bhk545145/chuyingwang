//
//  CYTabBarViewController.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/16.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "CYTabBarViewController.h"
#import "DetailProjectTableViewController.h"
#import "BusinessPlanViewController.h"
#import "ProjectDynamicsTableViewController.h"
#import "CardModel.h"
#import "CYTabbar.h"

@interface CYTabBarViewController ()<CYTabbarDelegate>
/**
 *  自定义的tabbar
 */
@property (nonatomic, weak) CYTabbar *customTabBar;
@end

@implementation CYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//返回之前的视图
- (void)popViewControllerback:(UIBarButtonItem *)Item{
    [self.navigationController popViewControllerAnimated:YES];
    //显示底部Tabbar
    self.tabBarController.tabBar.hidden = NO;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 删除系统自动生成的UITabBarButton
    for (UIView *child in self.tabBar.subviews) {
        if ([child isKindOfClass:[UIControl class]]) {
            [child removeFromSuperview];
        }
    }
}

-(void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    //导航栏标题
    self.navigationItem.title = _CardModel.Cardstr;
    //导航栏返回按钮
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"< 返回" style:UIBarButtonItemStyleDone target:self action:@selector(popViewControllerback:)];
    leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    // 初始化tabbar
    [self setupTabbar];
    // 初始化所有的子控制器
    [self setupAllChildViewControllers];
}

/**
 *  初始化tabbar
 */
- (void)setupTabbar
{
    CYTabbar *customTabBar = [[CYTabbar alloc] init];
    customTabBar.frame = self.tabBar.bounds;
    customTabBar.delegate = self;
    [self.tabBar addSubview:customTabBar];
    self.customTabBar = customTabBar;
}

/**
 *  监听tabbar按钮的改变
 *  @param from   原来选中的位置
 *  @param to     最新选中的位置
 */
- (void)tabBar:(CYTabbar *)tabBar didSelectedButtonFrom:(NSInteger)from to:(NSInteger)to
{
    self.selectedIndex = to;
}

- (void)tabBarDidClickedPlusButton:(CYTabbar *)tabBar
{
    
}

/**
 *  初始化所有的子控制器
 */
- (void)setupAllChildViewControllers
{
//    // 1.首页
    DetailProjectTableViewController *DetailProject = [[DetailProjectTableViewController alloc] init];
    [self setupChildViewController:DetailProject title:@"项目详情" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    DetailProject.CardModel = _CardModel;
//
//    // 2.消息
    BusinessPlanViewController *BusinessPlan = [[BusinessPlanViewController alloc] init];
    [self setupChildViewController:BusinessPlan title:@"商业计划" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
//    
//    // 3.广场
    ProjectDynamicsTableViewController *ProjectDynamics = [[ProjectDynamicsTableViewController alloc] init];
    [self setupChildViewController:ProjectDynamics title:@"项目动态" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
}

/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 1.设置控制器的属性
    childVc.title = title;
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 2.包装一个导航控制器
    [self addChildViewController:childVc];
    
    // 3.添加tabbar内部的按钮
    [self.customTabBar addTabBarButtonWithItem:childVc.tabBarItem];
}

@end
