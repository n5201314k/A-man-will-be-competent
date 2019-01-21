//
//  SretchTableViewCell.m
//  排序的用法
//
//  Created by 刘宇帅 on 2019/1/16.
//  Copyright © 2019 牛孟强. All rights reserved.
//

#import "SretchTableViewCell.h"

@implementation SretchTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initailSubViews];
    }
    return self;
    
}

-(void)initailSubViews{
    self.ChooseTypeLable = ({
        
        UILabel *label= [UILabel new];
        [self.contentView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(10);
            make.left.equalTo(self.contentView).offset(20);
        }];
         label;
    });
    
    self.SelectImageVIew = ({
        UIImageView *image  = [UIImageView new];
        image.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:image];
        [image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.height.equalTo(@30);
            make.centerY.equalTo(self.ChooseTypeLable);
            make.right.equalTo(self.contentView).offset(-20);
            
        }];
        image;
    });
    
    self.LineView = ({
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.left.right.equalTo(self.contentView );
            make.height.equalTo(@1);
        }];
        view;
        
    });
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
         self.SelectImageVIew.backgroundColor = [UIColor greenColor];
    }else{
       self.SelectImageVIew.backgroundColor = [UIColor redColor];
    }
   
}

@end
