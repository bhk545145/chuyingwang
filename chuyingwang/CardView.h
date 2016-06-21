//
//  CardView.h
//  ZLSwipeableViewDemo
//
//  Created by Zhixuan Lai on 11/1/14.
//  Copyright (c) 2014 Zhixuan Lai. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CardDelegate;
@class CardModel;
@interface CardView : UIView
@property(nonatomic,weak)id<CardDelegate> delegate;
@property(nonatomic,strong)CardModel *CardModel;

@end

@protocol CardDelegate<NSObject>
- (void)CardModelbtn:(CardModel *)cardModel;
@end