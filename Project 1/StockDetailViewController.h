//
//  UIViewController+StockDetailViewController.h
//  Project 1
//
//  Created by jkhart1 on 11/15/14.
//  Copyright (c) 2014 CSE494. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"
#import "Portfolio.h"

@interface StockDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *updtShares;

@property (weak, nonatomic) IBOutlet UILabel *tickerName;

@property (weak, nonatomic) IBOutlet UILabel *stockCount;

@property (weak, nonatomic) IBOutlet UILabel *stockValue;


@property (weak, nonatomic) IBOutlet UILabel *stockTotalVal;


@end
