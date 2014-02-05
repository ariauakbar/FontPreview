//
//  HPYViewController.m
//  FontPreview
//
//  Created by Mohamad Ariau Akbar on 2/4/14.
//  Copyright (c) 2014 Happy5. All rights reserved.
//

#import "HPYViewController.h"

static NSString * const kCellIdentifier = @"com.viewController.cell";

@interface HPYViewController ()
@property (nonatomic, strong) NSMutableArray * fonts;
@property (nonatomic, strong) NSMutableArray * fontSizes;
@end

@implementation HPYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self p_configureTableViewData];
    //[self p_configureTableView];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Private_Methods

- (void)p_configureTableViewData
{
    self.fonts = [NSMutableArray array];
    self.fontSizes = [NSMutableArray array];
    for (NSInteger index=10; index < 21; index++) {
        UIFont * font = [UIFont fontWithName:@"HelveticaNeue" size:index];
        [self.fontSizes addObject:[NSNumber numberWithInteger:index]];
        [self.fonts addObject:font];
    }
}

- (void)p_configureTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
}

#pragma mark Tableview_Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fonts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - The quick brown fox jumps over the lazy dog", [self.fontSizes[indexPath.row] stringValue]];
    cell.textLabel.font = self.fonts[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [UIView new];
}

@end
