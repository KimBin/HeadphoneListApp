//
//  ViewController.m
//  HeadphoneList
//
//  Created by admin on 9/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ListViewController.h"
#import "HeadphoneList.h"
#import "Headphone.h"

@interface ListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController {
    HeadphoneList *headphones;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [headphones count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListViewCell"
                                                            forIndexPath:indexPath];
    
    [self setupCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)setupCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    Headphone *headphone = [headphones headphoneAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:headphone.photoName];
    cell.textLabel.text = headphone.maker;
    cell.detailTextLabel.text = headphone.name;
}

- (void)setupData {
    headphones = [HeadphoneList defaultHeadphones];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end















