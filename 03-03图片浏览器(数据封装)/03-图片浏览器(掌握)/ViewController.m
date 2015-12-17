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

//数据
@property (nonatomic,strong) NSArray *array;


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

//view加载完毕就会调用这个方法
- (void) viewDidLoad
{
    [super viewDidLoad];
    
 
    [self changeData];
    
}
//使用时候才去加载 懒加载(重写getter方法)
- (NSArray *) array
{
//  第一次加载时候
    if(_array == nil){
        _array = @[
                   @{@"icon":@"biaoqingdi",@"desc":@"在他面前，其他神马表情都弱爆了"},
                   @{@"icon":@"wangba",@"desc":@"哥们为什么选八号呢"},
                   @{@"icon":@"bingli",@"desc":@"这也忒狠了"},
                   @{@"icon":@"chiniupa",@"desc":@"这小姑娘吃个牛排比杀牛还费劲啊"},
                   @{@"icon":@"danteng",@"desc":@"亲，你能改下你的网名么？哈哈"},
                   
                   ];
    }
 
    return _array;
}





- (void) changeData
{
    //  设置索引文本
    self.indexLabel.text = [NSString stringWithFormat:@"%d/%zd",self.index + 1,self.array.count];
//   取出索引对应的字典
    NSDictionary *dict = self.array[self.index];
    //          改变图片
    self.imageView.image = [UIImage imageNamed:dict[@"icon"]];
    //           改变描述
    self.descLabel.text = dict[@"desc"];
    
    self.preBtn.enabled = (self.index != 0);
    
    self.nextBtn.enabled = (self.index != self.array.count - 1);
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



















