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

        UIImage  *image = [UIImage imageNamed:imageN];
        
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
