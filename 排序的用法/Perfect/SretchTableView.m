//
//  SretchTableView.m
//  排序的用法
//
//  Created by 刘宇帅 on 2019/1/16.
//  Copyright © 2019 牛孟强. All rights reserved.
//

#import "SretchTableView.h"
#import "SretchTableViewCell.h"
@interface SretchTableView ()

@end

@implementation SretchTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"学习雷锋"];
   self.tableView.backgroundColor = CPColor(246, 246, 246);
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView*  sectionBackView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 20)];
    UILabel *label = [UILabel new];
    label.frame =CGRectMake(0, 0, kScreenWidth, 20);
    label.text =@"学习类型好榜样";
    [sectionBackView addSubview:label];
    return sectionBackView;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SretchTableViewCell * cell = [[SretchTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([SretchTableViewCell class])];
    
    if (cell==nil) {
        cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([SretchTableViewCell class])];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.ChooseTypeLable.text =@"学习雷锋";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    [self performSelector:@selector(didBackView) withObject:nil afterDelay:0.5f];

    
    
}
-(void)didBackView{
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
