//
//  ViewController.h
//  排序的用法
//
//  Created by 刘宇帅 on 2018/7/24.
//  Copyright © 2018年 牛孟强. All rights reserved.
//

#import <UIKit/UIKit.h>



typedef void (^PresentAlreatBlock)(NSString *str) ;

@interface ViewController : UIViewController


@property (nonatomic,copy) PresentAlreatBlock  PresentBlock;

@end

