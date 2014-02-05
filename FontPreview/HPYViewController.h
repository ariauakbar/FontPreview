//
//  HPYViewController.h
//  FontPreview
//
//  Created by Mohamad Ariau Akbar on 2/4/14.
//  Copyright (c) 2014 Happy5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HPYViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView * tableView;
@end
