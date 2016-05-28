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


@interface ViewController ()<ZLSwipeableViewAnimator>{
    int icard;
}

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    ZLSwipeableView *swipeableView = [[ZLSwipeableView alloc] initWithFrame:CGRectZero];
    self.swipeableView = swipeableView;
    [self.view addSubview:self.swipeableView];
    icard = 1;
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
                               views:NSDictionaryOfVariableBindings(
                                                                    swipeableView)]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-75-[swipeableView]-155-|"
                               options:0
                               metrics:metrics
                               views:NSDictionaryOfVariableBindings(
                                                                    swipeableView)]];
    //firstview
//    FirstView *firstview = [[FirstView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-45)];
//    [self.view addSubview:firstview];

}

- (void)viewDidLayoutSubviews {
    [self.swipeableView loadViewsIfNeeded];
}

- (void)viewWillAppear:(BOOL)animated{
    
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
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

#pragma mark - ZLSwipeableViewDataSource

- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView {
    if (icard > 3) {
        icard = 1;
    }
    NSString *icardstr = [NSString stringWithFormat:@"i%d",icard];
    CardView *view = [[CardView alloc] initWithFrame:swipeableView.bounds setiCard:icardstr];
    icard++;
    return view;
}

@end
