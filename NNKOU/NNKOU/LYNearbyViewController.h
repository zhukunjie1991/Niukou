//
//  LYNearbyViewController.h
//  NNKOU
//
//  Created by LinYong on 14-5-3.
//  Copyright (c) 2014年 LinYong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYNearbyViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (retain, nonatomic) IBOutlet UITableView *tblView;

@end
