//
//  ViewController.m
//  02-按钮的基本使用(transform)
//
//  Created by Apple on 14/12/10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
/**头像*/
@property (weak, nonatomic) IBOutlet UIButton *headBtn;

/**移动*/
- (IBAction)move;
/**缩放*/
- (IBAction)bigOrSmall;
/**
 *  旋转
 */
- (IBAction)rotate;

@end

@implementation ViewController


- (IBAction)move {
//  向右平移  x 平移的x轴的距离   y 平移的y轴的距离
    self.headBtn.transform = CGAffineTransformTranslate(self.headBtn.transform, -20, -20);
    
//  这个是在最原始的位置进行平移
//    self.headBtn.transform = CGAffineTransformMakeTranslation(20, 0);
    
}

- (IBAction)bigOrSmall {
    
//  缩放  x表示x轴缩放比例 是个CGFloat类型  > 1  放大 < 1表示缩小
    self.headBtn.transform = CGAffineTransformScale(self.headBtn.transform,0.5,0.5);
    
}

- (IBAction)rotate {
    
//  旋转 45度  正数 顺时针  负数逆时针 ,angle 是弧度  M_PI_2 代表  90度
    [UIView animateWithDuration:2.0 animations:^{
          self.headBtn.transform = CGAffineTransformRotate(self.headBtn.transform, M_PI_2);
    }];
  
    
}
@end
