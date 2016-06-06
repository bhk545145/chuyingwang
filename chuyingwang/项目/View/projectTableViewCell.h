//
//  projectTableViewCell.h
//  chuyingwang
//
//  Created by bai on 16/5/28.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CardModel;
@interface projectTableViewCell : UITableViewCell

@property(nonatomic,strong)CardModel *CardModel;

//项目图片
@property (weak, nonatomic) IBOutlet UIButton *projectbtn;
//项目名称
@property (weak, nonatomic) IBOutlet UIButton *projectNamebtn;
//项目介绍
@property (weak, nonatomic) IBOutlet UITextView *projectIntroductionlab;
//融资状态
@property (weak, nonatomic) IBOutlet UIButton *financingStatusbtn;
//融资进度表
@property (weak, nonatomic) IBOutlet UIProgressView *financingStatusProgress;
//阅读和收藏
@property (weak, nonatomic) IBOutlet UILabel *readingCollection;
@end
