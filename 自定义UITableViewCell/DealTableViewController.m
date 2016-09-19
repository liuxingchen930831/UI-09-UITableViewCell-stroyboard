//
//  DealTableViewController.m
//  自定义UITableViewCell
//
//  Created by liuxingchen on 16/9/18.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "DealTableViewController.h"
#import "XCDeal.h"
#import "XCDealCell.h"
@interface DealTableViewController ()

@property(nonatomic,strong)NSArray * deals ;
@end

@implementation DealTableViewController
-(NSArray *)deals
{
    if (_deals ==nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"deal.plist" ofType:nil];
        NSMutableArray *arrayM =[NSMutableArray array];
        NSArray *dealArray =[NSArray arrayWithContentsOfFile:path];
        for (NSDictionary *dict in dealArray) {
            XCDeal *deal = [XCDeal dealWithDict:dict];
            [arrayM addObject:deal];
        }
        _deals = arrayM;
    }
    return _deals;
}
- (void)viewDidLoad {
    [super viewDidLoad];
}



#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.deals.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *ID = @"dealCell";
    XCDealCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.deal = self.deals[indexPath.row];
    return cell;

}

@end
