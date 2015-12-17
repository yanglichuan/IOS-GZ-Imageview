//
//  ViewController.m
//  03-图片浏览器(掌握)
//
//  Created by Apple on 14/12/10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
/**
 *  索引标签
 */
@property (weak, nonatomic) IBOutlet UILabel *indexLabel;
/**
 *  图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

/**
 *  描述
 */
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
/**
 *  上一张按钮
 */
@property (weak, nonatomic) IBOutlet UIButton *preBtn;
/**
 *  下一张按钮
 */
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

/**
 *  当前索引
 */
@property (nonatomic,assign) int index;

/**
 *  上一张
 */
- (IBAction)previous;

/**
 *  下一张
 */
- (IBAction)next;
@end

@implementation ViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    [self changeData];
    
}


- (void) changeData
{
    //  设置索引文本
    self.indexLabel.text = [NSString stringWithFormat:@"%d/6",self.index + 1];
    
    switch (self.index) {
        case 0:
          
            //          改变图片
            self.imageView.image = [UIImage imageNamed:@"wangba"];
            //           改变描述
            self.descLabel.text = @"哥们为什么选八号呢";
            
            break;
        case 1:
            //          改变图片
            self.imageView.image = [UIImage imageNamed:@"biaoqingdi"];
            //           改变描述
            self.descLabel.text = @"在他面前，其他神马表情都弱爆了！";
            break;
        case 2:
            //          改变图片
            self.imageView.image = [UIImage imageNamed:@"bingli"];
            //           改变描述
            self.descLabel.text = @"这也忒狠了";
            break;
        case 3:
            //          改变图片
            self.imageView.image = [UIImage imageNamed:@"chiniupa"];
            //           改变描述
            self.descLabel.text = @"这小姑娘吃个牛排比杀牛还费劲啊";
            break;
        case 4:
            //          改变图片
            self.imageView.image = [UIImage imageNamed:@"danteng"];
            //           改变描述
            self.descLabel.text = @"亲，你能改下你的网名么？哈哈";
            break;
        case 5:
            //          改变图片
            self.imageView.image = [UIImage imageNamed:@"danteng"];
            //           改变描述
            self.descLabel.text = @"亲，你能改下你的网名么？哈哈";
            break;
            
        default:
            break;
    }
    
    
    //    if(self.index == 0){
    //
    //        self.preBtn.enabled = NO;
    //    }else{
    //        self.preBtn.enabled = YES;
    //    }
    //
    self.preBtn.enabled = (self.index != 0);
    
    self.nextBtn.enabled = (self.index != 4);
}

- (IBAction)next {
//  下一张索引+1
    self.index++;

    [self changeData];

}
- (IBAction)previous {
    
    //  上一张索引-1
    self.index--;
 
    [self changeData];
 
}
@end



















