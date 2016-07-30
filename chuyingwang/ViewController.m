//
//  ViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/5/23.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ViewController.h"
#import "CardView.h"
#import "FirstView.h"
#import "bhkCommon.h"
#import "CardModel.h"
#import "PublicTool.h"
#import "CYProjectService.h"
#import "DBHelp.h"
#import "CYTabBarViewController.h"
#import "BmobTool.h"


@interface ViewController ()<ZLSwipeableViewAnimator,CardDelegate,UIScrollViewDelegate>{
    UIScrollView *firstscrollview;
    FirstView *firstview;
}
@property (nonatomic,strong) NSArray *Cardarray;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    _Cardarray = @[@{
                   @"iCardimg"     :   @"i1",
                   @"Cardstr"     :   @"Bikernel 项目",
                   @"financingStatus"       :   @"股权融资中",
                   @"financingStatusPercentage"      :   [NSNumber numberWithFloat:0.25f],
                   @"projectIntroduction"      :   @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀",
                   @"reading":   [NSNumber numberWithInt:5],
                   @"collection"     :   [NSNumber numberWithInt:8]
                   },@{
                   @"iCardimg"     :   @"i2",
                   @"Cardstr"     :   @"Bikernel 项目",
                   @"financingStatus"       :   @"股权融资中",
                   @"financingStatusPercentage"      :   [NSNumber numberWithFloat:0.75f],
                   @"projectIntroduction"      :   @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀",
                   @"reading":   [NSNumber numberWithInt:5],
                   @"collection"     :   [NSNumber numberWithInt:18]
                   },@{
                   @"iCardimg"     :   @"i3",
                   @"Cardstr"     :   @"Bikernel 项目",
                   @"financingStatus"       :   @"融资完成",
                   @"financingStatusPercentage"      :   [NSNumber numberWithFloat:1.0f],
                   @"projectIntroduction"      :   @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀",
                   @"reading":   [NSNumber numberWithInt:15],
                   @"collection"     :   [NSNumber numberWithInt:8]
                   }];
    if (IsiOS7Later) {
        //导航栏背景和字体颜色
        [self.navigationController.navigationBar setBarTintColor:IWcolor(27, 27, 27)];
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],UITextAttributeTextColor,[UIColor whiteColor],UITextAttributeTextShadowColor,[UIFont fontWithName:@"Arial Rounded MT Bold" size:17.0],UITextAttributeFont,nil]];
    }
    
    ZLSwipeableView *swipeableView = [[ZLSwipeableView alloc] initWithFrame:CGRectZero];
    self.swipeableView = swipeableView;
    [self.view addSubview:self.swipeableView];
    // Required Data Source
    self.swipeableView.dataSource = self;
    self.swipeableView.viewAnimator = self;
    // Optional Delegate
    self.swipeableView.delegate = self;
    
    self.swipeableView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *metrics = @{};
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"|-10-[swipeableView]-10-|"
                               options:0
                               metrics:metrics
                               views:NSDictionaryOfVariableBindings(swipeableView)]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-75-[swipeableView]-155-|"
                               options:0
                               metrics:metrics
                               views:NSDictionaryOfVariableBindings(swipeableView)]];
    [self topbtn:nil];
    BmobTool *bmobtool = [[BmobTool alloc]init];
    [bmobtool Bmobquery];
}

- (void)viewDidLayoutSubviews {
    [self.swipeableView loadViewsIfNeeded];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //状态栏颜色
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleLightContent;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}


- (void)animateView:(UIView *)view
              index:(NSUInteger)index
              views:(NSArray<UIView *> *)views
      swipeableView:(ZLSwipeableView *)swipeableView {
    NSUInteger  i = index;
    NSTimeInterval duration = 0.4;
    [self rotateAndTranslateView:view
                       forDegree:i
                        duration:duration
                   swipeableView:swipeableView];
}


- (void)rotateAndTranslateView:(UIView *)view
                     forDegree:(NSUInteger)i
                      duration:(NSTimeInterval)duration
                 swipeableView:(ZLSwipeableView *)swipeableView {
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         view.center = [swipeableView convertPoint:swipeableView.center fromView:swipeableView.superview];
                         CGAffineTransform transform = CGAffineTransformMake(1 - i*0.06, 0, 0,1- i*0.06, 0, i*25);
                         view.transform = transform;
                         view.alpha = 1 - i * 0.2;
                     }
                     completion:nil];
}

#pragma mark - ZLSwipeableViewDelegate

- (void)swipeableView:(ZLSwipeableView *)swipeableView
         didSwipeView:(UIView *)view
          inDirection:(ZLSwipeableViewDirection)direction {
//    NSLog(@"did swipe in direction: %zd", direction);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView didCancelSwipe:(UIView *)view {
//    NSLog(@"did cancel swipe");
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView
  didStartSwipingView:(UIView *)view
           atLocation:(CGPoint)location {
//    NSLog(@"did start swiping at location: x %f, y %f", location.x, location.y);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView
          swipingView:(UIView *)view
           atLocation:(CGPoint)location
          translation:(CGPoint)translation {
//    NSLog(@"swiping at location: x %f, y %f, translation: x %f, y %f", location.x, location.y, translation.x, translation.y);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView
    didEndSwipingView:(UIView *)view
           atLocation:(CGPoint)location {
//    NSLog(@"did end swiping at location: x %f, y %f", location.x, location.y);
}

//顶部按钮
- (IBAction)topbtn:(id)sender {
    firstscrollview = [[UIScrollView alloc]initWithFrame:self.view.frame];
    firstview = [[FirstView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-45)];
    firstscrollview.contentSize = CGSizeMake(firstview.frame.size.width, firstview.frame.size.height*2);
    firstscrollview.delegate = self;
    firstscrollview.bounces = NO;
    firstscrollview.showsVerticalScrollIndicator = NO;
    firstscrollview.pagingEnabled = YES;
    [firstscrollview addSubview:firstview];
    [self.view addSubview:firstscrollview];

}

#pragma mark UIScrollViewDelegate
//只要滚动了就会触发
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
{
    //NSLog(@"%f,%f",scrollView.contentOffset.y,self.view.bounds.size.height - 91);
    if (scrollView.contentOffset.y > self.view.bounds.size.height - 91) {
        scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
        [firstview removeFromSuperview];
        [firstscrollview removeFromSuperview];
        return;
    }else{
        
    }
}

#pragma mark - ZLSwipeableViewDataSource
//卡牌数据展示
- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView {
    NSMutableArray *Cardarray = [PublicTool cardModelarray:_Cardarray];
    CardView *view = [[CardView alloc] initWithFrame:swipeableView.bounds];
    view.delegate = self;
    static int i;
    if (i > Cardarray.count -1) {
        i = 0;
    }
    CardModel *cardModel = Cardarray[i];
    i++;
    view.CardModel = cardModel;
    return view;
}

//CardView点击事件
- (void)CardModelbtn:(CardModel *)cardModel{
    CYTabBarViewController *DetailProject = [[CYTabBarViewController alloc]init];
    DetailProject.CardModel = cardModel;
    [self.navigationController pushViewController:DetailProject animated:YES];
    //隐藏底部Tabbar
    self.tabBarController.tabBar.hidden = YES;
}


@end
