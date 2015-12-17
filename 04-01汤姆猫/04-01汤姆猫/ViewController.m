//
//  ViewController.m
//  04-01汤姆猫
//
//  Created by Apple on 14/12/10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
 *  图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

/**
 *  喝
 */
- (IBAction)drink;
/**
 *  敲头
 */
- (IBAction)knock;

- (IBAction)footLeft;
@end

@implementation ViewController



- (IBAction)drink {
    
//  如果正在执行动画就不要执行了
    
    if(self.imageView.isAnimating){
        return;
    }
   
    
//  创建可变数组
    NSMutableArray *images = [NSMutableArray array];
//  往数组中添加图片
    for (int index = 0; index < 81; index++) {
//        图片名称
        NSString *imageName = [NSString stringWithFormat:@"drink_%02d",index];
//       创建图片
        UIImage  *image = [UIImage imageNamed:imageName];
        
//       图片加入数组
        [images addObject:image];
    }
//  把图片赋值给imageView动画数组【帧动画】
    self.imageView.animationImages = images;
    
//  整个动画播放一圈的时间
    self.imageView.animationDuration = 81 * 0.05;
    
//  动画的重复次数
    self.imageView.animationRepeatCount = 1;
    
//   开始播放动画
    [self.imageView startAnimating];
}

- (IBAction)knock {
    
    if(self.imageView.isAnimating){
        return;
    }
    
    //  创建可变数组
    NSMutableArray *images = [NSMutableArray array];
    //  往数组中添加图片
    for (int index = 0; index < 81; index++) {
        //        图片名称
        NSString *imageName = [NSString stringWithFormat:@"knockout_%02d",index];
        //       创建图片
        UIImage  *image = [UIImage imageNamed:imageName];
        
        //       图片加入数组
        [images addObject:image];
    }
    //  把图片赋值给imageView动画数组【帧动画】
    self.imageView.animationImages = images;
    
    //  整个动画播放一圈的时间
    self.imageView.animationDuration = 81 * 0.05;
    
    //  动画的重复次数
    self.imageView.animationRepeatCount = 1;
    
    //   开始播放动画
    [self.imageView startAnimating];
    
}

- (IBAction)footLeft {
    
    if(self.imageView.isAnimating){
        return;
    }
    
    //  创建可变数组
    NSMutableArray *images = [NSMutableArray array];
    //  往数组中添加图片
    for (int index = 0; index < 30; index++) {
        //        图片名称
        NSString *imageName = [NSString stringWithFormat:@"footLeft_%02d",index];
        //       创建图片
        UIImage  *image = [UIImage imageNamed:imageName];
        
        //       图片加入数组
        [images addObject:image];
    }
    //  把图片赋值给imageView动画数组【帧动画】
    self.imageView.animationImages = images;
    
    //  整个动画播放一圈的时间
    self.imageView.animationDuration = 30 * 0.05;
    
    //  动画的重复次数
    self.imageView.animationRepeatCount = 1;
    
    //   开始播放动画
    [self.imageView startAnimating];
    
}
@end
