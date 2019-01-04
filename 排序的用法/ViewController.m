//
//  ViewController.m
//  排序的用法
//
//  Created by 刘宇帅 on 2018/7/24.
//  Copyright © 2018年 牛孟强. All rights reserved.
//

#import "ViewController.h"

#import "NmqStoryViewController.h"
#import "WHKit.h"


#define ScreenWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *but  = [[UIButton alloc] initWithFrame:CGRectMake(ScreenWidth /3, 100, ScreenWidth/2  , [UIScreen mainScreen].bounds.size.height/2)];
    but.backgroundColor = [UIColor redColor];
    [self.view addSubview:but];
   
   // 选择排序  i j  比较
    NSMutableArray *arr_M = [NSMutableArray arrayWithObjects:@1,@4,@2,@3,@5,nil];
    for (int i=0; i<arr_M.count; i++) {
        for (int j=i+1; j<arr_M.count; j++) {
              [arr_M exchangeObjectAtIndex:i withObjectAtIndex:j];
        }
    }
    NSLog(@"%@",arr_M);
    
    // 冒泡排序  (相邻比较)
    //遍历`数组的个数`次
    /*
     i = 0 的时候，j的相邻两个位置都要比较排一下位置：
     j = 0 的时候：arr_M = 41235
     j = 1 的时候：arr_M = 42135
     j = 2 的时候：arr_M = 42315
     j = 3 的时候：arr_M = 42351
     i = 1;
     ……  ……
     */
    for (int i = 0; i < arr_M.count; ++i) {
        //遍历数组的每一个`索引`（不包括最后一个,因为比较的是j+1）
        for (int j = 0; j < arr_M.count-1; ++j) {
            //根据索引的`相邻两位`进行`比较`
            if (arr_M[j] < arr_M[j+1]) {
                [arr_M exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }    
    
    NSLog(@"最终结果：%@",arr_M);
      
    // Do any additional setup after loading the view, typically from a nib.
//    /* 获取主队列(主线程)*/
//    NSOperationQueue *queue = [NSOperationQueue mainQueue];
//    
//    /* 创建 a b  c 操作*/
//    NSOperation *c  = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"Operation C Start");
//    }];
//    NSOperation *b = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"Operation B Start!");
//        [NSThread sleepForTimeInterval:3.0];
//        NSLog(@"Operation B Done!");
//    }];
//    NSOperation *a = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"Operation A Start!");
//        [NSThread sleepForTimeInterval:3.0];
//        NSLog(@"Opreation A Done!");
//    }];
//    
//    /*添加操作依赖，C依赖于a和b*/
//    [c addDependency:a];
//    [c addDependency:b];
//    /*添加操作a、b、c到操作队列queue (特意将c在a和b之前添加)*/
//    [queue addOperation:c];
//    [queue addOperation:a];
//    [queue addOperation:b];
//    
//    __weak typeof(self) weakSelf = self;
//   //    _PresentBlock
//   //    self.PresentBlock
//    self.PresentBlock = ^(NSString *str) {
//        weakSelf.view.backgroundColor = [UIColor redColor];
//    };
    UIButton *buttton= [[UIButton alloc] init];
    buttton.frame = CGRectMake(0, 0, 20, 20);
   // [but addTarget:self action:@selector(butclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttton];
    //点击按钮
    [but wh_addActionHandler:^{
        NSLog(@"我被点击了");
    }];

    NSString *filePath  = [@"test.plist" appendDocumentPath];
    NSLog(@"%@",filePath);
    
    UIImage *image = [UIImage imageNamed:@"ZFPlayer_Wechat_icon@3x"];
    
    image = [image wh_convertToGrayImage];
//    image = [UIImage wh_snapshotCurrentScreen];
    image = [image blur];
    image = [image wh_imageAddCornerWithRadius:15 andSize:CGSizeMake(30, 30)];
    UIImageView *imageView = [UIImageView new];
    imageView.frame = CGRectMake(100, 100, 100, 100);
    imageView.image =image;
    [self.view addSubview:imageView];
    
    
    
}
-(void)butclick{
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"NmqStoryViewControllerStoryboard" bundle:nil];
    NmqStoryViewController  * xib = [storyboard instantiateViewControllerWithIdentifier:@"NmqStoryViewController"];
    [self presentViewController:xib animated:YES completion:nil];


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
