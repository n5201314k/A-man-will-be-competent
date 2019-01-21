//
//  NmqStoryViewController.m
//  排序的用法
//
//  Created by 刘宇帅 on 2018/8/10.
//  Copyright © 2018年 牛孟强. All rights reserved.
//

#import "NmqStoryViewController.h"

@interface NmqStoryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *storybut;

@end

@implementation NmqStoryViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
   
    // Do any additional setup after loading the view.
}

- (IBAction)but:(id)sender {
    
    
    NSLog(@"Unable to simultaneously satisfy constraints");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
