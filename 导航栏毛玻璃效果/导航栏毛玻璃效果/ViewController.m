//
//  ViewController.m
//  导航栏毛玻璃效果
//
//  Created by LiCheng on 2017/1/4.
//  Copyright © 2017年 LiCheng. All rights reserved.
//

#import "ViewController.h"
#import "BaseCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
    [self setupTopView];

}
#pragma mark - <初始化 上面视图>
-(void)setupTopView{
    
    UIView *view = [[UIView alloc] initWithFrame:(CGRectMake(0, 64, self.view.frame.size.width, 40))];
    view.backgroundColor = [UIColor colorWithRed:145/255.0 green:132/255.0 blue:0/255.0 alpha:0.6];
    [self.view addSubview:view];
}
#pragma mark - <初始化 tableView>
-(void)setupTableView{
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:(CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    // tableview内容视图 内边距
    tableView.contentInset          = UIEdgeInsetsMake(40+64, 0, 0, 0);
    // tableview滚动条 内边距
    tableView.scrollIndicatorInsets = UIEdgeInsetsMake(40+64, 0, 0, 0);
    // 不让 viewController 自动调整布局
    if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    [self.view addSubview:tableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"CELL"];
    BaseCell *cell = [BaseCell loadCell];
    
    return cell;
}


@end
