//
//  BaseCell.m
//  导航栏毛玻璃效果
//
//  Created by LiCheng on 2017/1/4.
//  Copyright © 2017年 LiCheng. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
}
+(instancetype)loadCell{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
}


@end
