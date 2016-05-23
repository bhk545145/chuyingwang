//
//  ViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/5/23.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ViewController.h"
#import "bhkCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource>

@end

@implementation ViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return  4;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    bhkCollectionViewCell *cell = (bhkCollectionViewCell  *)[collectionView dequeueReusableCellWithReuseIdentifier:@"reuse" forIndexPath:indexPath];
    [self configureCell:cell withIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(bhkCollectionViewCell *)cell withIndexPath:(NSIndexPath *)indexPath
{
    UIView  *subview = [cell.contentView viewWithTag:99];
    [subview removeFromSuperview];
    
    switch (indexPath.section) {
        case 0:
            cell.cardimageview.image =  [UIImage imageNamed:@"i1"];
            break;
        case 1:
            cell.cardimageview.image =  [UIImage imageNamed:@"i2"];
            break;
        case 2:
            cell.cardimageview.image =  [UIImage imageNamed:@"i3"];
            break;
        case 3:
            cell.cardimageview.image =  [UIImage imageNamed:@"i4"];
            break;
        case 4:
            cell.cardimageview.image =  [UIImage imageNamed:@"i5"];
            break;
        default:
            break;
    }
}

@end
