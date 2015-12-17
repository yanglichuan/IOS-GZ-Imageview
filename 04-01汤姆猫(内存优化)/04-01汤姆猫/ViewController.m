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
/**
 *  左脚
 */
- (IBAction)footLeft;
@end

@implementation ViewController

/*
  方法抽取：把相同的代码拷贝过来，不同东西通过参数传入
 
 */

- (void) runAnimationWithCount:(NSInteger) count andImageName:(NSString *) imageName
{
    //  如果正在执行动画就不要执行了
    
    if(self.imageView.isAnimating){
        return;
    }
    
    
    //  创建可变数组
    NSMutableArray *images = [NSMutableArray array];
    //  往数组中添加图片
    for (int index = 0; index < count; index++) {
        //        图片名称
        NSString *imageN = [NSString stringWithFormat:@"%@_%02d",imageName,index];
        //       创建图片
//      imageNamed 带有缓存，通过imageNamed创建的图片会放到缓存中
//        当你把图片放在 Images.xcassets 就只能通过imageNamed加载
//        UIImage  *image = [UIImage imageNamed:imageN];
        NSString *path = [[NSBundle mainBundle] pathForResource:imageN ofType:@"jpg"];

//      imageWithContentsOfFile 不带缓存
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        //       图片加入数组
        [images addObject:image];
    }
    //  把图片赋值给imageView动画数组【帧动画】
    self.imageView.animationImages = images;
    
    //  整个动画播放一圈的时间
    self.imageView.animationDuration = count * 0.05;
    
    //  动画的重复次数
    self.imageView.animationRepeatCount = 1;
    
    //   开始播放动画
    [self.imageView startAnimating];
    
//  清空animationImages的时间为动画执行完毕后0.1s
    CGFloat delay = self.imageView.animationDuration + 0.1;
    
//  延迟执行方法
//    [self performSelector:@selector(clearImages) withObject:nil afterDelay:delay];
//  让self.imageView延迟 delay秒 执行setAnimationImages:方法 来清空animationImages
    [self.imageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:delay];
}

- (void) clearImages
{
    //  清空animationImages中的图片
    self.imageView.animationImages = nil;
}


- (IBAction)drink {
    [self runAnimationWithCount:81 andImageName:@"drink"];
}

- (IBAction)knock {

      [self runAnimationWithCount:81 andImageName:@"knockout"];

    
}

- (IBAction)footLeft {
    
   [self runAnimationWithCount:30 andImageName:@"footLeft"];

    
}
@end
