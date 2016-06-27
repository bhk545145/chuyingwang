//
//  FirstView.m
//  chuyingwang
//
//  Created by bai on 16/5/28.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "FirstView.h"
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "bhkCommon.h"


@interface FirstView (){
    NSString *filepathFolder;
}

@property(strong,nonatomic) MPMoviePlayerController *movePlayController;
@end


@implementation FirstView

- (void)removeFromSuperview{
    [super removeFromSuperview];
    [self.movePlayController stop];
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        filepathFolder = [paths objectAtIndex:0];
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"FirstView" owner:nil options:nil];
        UIView *FirstView = [views lastObject];
        FirstView.frame = self.frame;
        [self addSubview:FirstView];
        [self upadteDisplay:[NSURL URLWithString:MovieURL]];
    }
    return self;
}

- (void)upadteDisplay:(NSURL *)movieURL{
    [self.movePlayController.view removeFromSuperview];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filepath = [filepathFolder stringByAppendingPathComponent:[NSString stringWithFormat:MP4Name]];
    //如果本地文件不存在，下载视频
    if (![fileManager fileExistsAtPath:filepath]) {
        [self download:movieURL];
    } else {
        NSURL *moviepath = [NSURL fileURLWithPath:filepath];
        self.movePlayController = [[MPMoviePlayerController alloc]initWithContentURL:moviepath];
        self.movePlayController.scalingMode = MPMovieScalingModeAspectFit;
        [self.movePlayController.view setFrame:CGRectMake(0, 64, self.frame.size.width, self.frame.size.width)];
        [self.movePlayController play];
        self.movieView = self.movePlayController.view;
        self.movieView.clipsToBounds = YES;
        [self addSubview:self.movieView];
    }
}

//下载视频到本地
- (void)download:(NSURL *)movieURL{
    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:movieURL];
    [request setRequestMethod:@"POST"];
    [request startAsynchronous];
    __block ASIHTTPRequest *reqblock = request;
    [request setCompletionBlock:^{
        if (reqblock.responseStatusCode == 200)
        {
            NSString *filepath = [filepathFolder stringByAppendingPathComponent:[NSString stringWithFormat:MP4Name]];
            if ([reqblock.responseData writeToFile:filepath atomically:YES])
            {
                NSURL *moviepath = [NSURL fileURLWithPath:filepath];
                [self upadteDisplay:moviepath];
            }
        }
    }];
}
@end
