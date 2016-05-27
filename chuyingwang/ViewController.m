//
//  ViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/5/23.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ViewController.h"
#import "CardView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
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
                               views:NSDictionaryOfVariableBindings(
                                                                    swipeableView)]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-75-[swipeableView]-155-|"
                               options:0
                               metrics:metrics
                               views:NSDictionaryOfVariableBindings(
                                                                    swipeableView)]];

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
    CGFloat degree = sin(0 * index);
    NSTimeInterval duration = 0.4;
    CGPoint offset = CGPointMake(0, CGRectGetHeight(swipeableView.bounds) * 0.3);
    CGPoint translation = CGPointMake(0, index * 15.0);
    [self rotateAndTranslateView:view
                       forDegree:degree
                     translation:translation
                        duration:duration
              atOffsetFromCenter:offset
                   swipeableView:swipeableView];
}

- (CGFloat)degreesToRadians:(CGFloat)degrees {
    return degrees * M_PI / 180;
}

- (CGFloat)radiansToDegrees:(CGFloat)radians {
    return radians * 180 / M_PI;
}

- (void)rotateAndTranslateView:(UIView *)view
                     forDegree:(float)degree
                   translation:(CGPoint)translation
                      duration:(NSTimeInterval)duration
            atOffsetFromCenter:(CGPoint)offset
                 swipeableView:(ZLSwipeableView *)swipeableView {
    float rotationRadian = [self degreesToRadians:degree];
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         view.center = [swipeableView convertPoint:swipeableView.center
                                                          fromView:swipeableView.superview];
                         CGAffineTransform transform =
                         CGAffineTransformMakeTranslation(0, offset.y);
                         transform = CGAffineTransformRotate(transform, rotationRadian);
                         transform = CGAffineTransformTranslate(transform, -offset.x, -offset.y);
                         transform =
                         CGAffineTransformTranslate(transform, translation.x, translation.y);
                         view.transform = transform;
                     }
                     completion:nil];
}

#pragma mark - ZLSwipeableViewDelegate

- (void)swipeableView:(ZLSwipeableView *)swipeableView
         didSwipeView:(UIView *)view
          inDirection:(ZLSwipeableViewDirection)direction {
    NSLog(@"did swipe in direction: %zd", direction);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView didCancelSwipe:(UIView *)view {
    NSLog(@"did cancel swipe");
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView
  didStartSwipingView:(UIView *)view
           atLocation:(CGPoint)location {
    NSLog(@"did start swiping at location: x %f, y %f", location.x, location.y);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView
          swipingView:(UIView *)view
           atLocation:(CGPoint)location
          translation:(CGPoint)translation {
    NSLog(@"swiping at location: x %f, y %f, translation: x %f, y %f", location.x, location.y,
          translation.x, translation.y);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView
    didEndSwipingView:(UIView *)view
           atLocation:(CGPoint)location {
    NSLog(@"did end swiping at location: x %f, y %f", location.x, location.y);
}

#pragma mark - ZLSwipeableViewDataSource

- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView {
    
    CardView *view = [[CardView alloc] initWithFrame:swipeableView.bounds];
    view.backgroundColor = [UIColor whiteColor];

    return view;
}

@end
