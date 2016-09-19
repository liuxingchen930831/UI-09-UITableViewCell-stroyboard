//
//  XCDealCell.m
//  自定义UITableViewCell
//
//  Created by liuxingchen on 16/9/19.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCDealCell.h"
#import "XCDeal.h"
@implementation XCDealCell
-(void)setDeal:(XCDeal *)deal
{
    _deal = deal;
    self.iconView.image = [UIImage imageNamed:deal.icon];
    self.buyCount.text = deal.buyCount;
    self.pirceView.text = deal.price;
    self.titleView.text = deal.title;
}
@end
