//
//  LYMainPageViewController.m
//  NNKOU
//
//  Created by LinYong on 14-5-3.
//  Copyright (c) 2014年 LinYong. All rights reserved.
//

#import "LYMainPageViewController.h"
#import "LYMainCell.h"

@interface LYMainPageViewController ()

@end

@implementation LYMainPageViewController

UIBarButtonItem *selectCityBar;
UIBarButtonItem *searchBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(40.f, 20.0f, 45.0f, 10.0f)];
    cityLabel.font = [UIFont systemFontOfSize:10];
    
    //选择城市按钮
    selectCityBar = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"down.png"] style:UIBarButtonItemStylePlain target:self action:@selector(selectCity)];
    self.navigationItem.leftBarButtonItem = selectCityBar;
    
    //搜索
    searchBar = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(search)];
    self.navigationItem.rightBarButtonItem = searchBar;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 33;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"LYMainCell";
    
    LYMainCell *cell = (LYMainCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        // 通过nib文件创建cell
        NSArray *nibTableCells = [[NSBundle mainBundle] loadNibNamed:@"LYMainCell" owner:self options:nil];
        cell = [nibTableCells objectAtIndex:0];
    }
    
    return cell;
}

#pragma mark -
#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 92.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
