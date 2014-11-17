//
//  UIViewController+StockDetailViewController.m
//  Project 1
//
//  Created by jkhart1 on 11/15/14.
//  Copyright (c) 2014 CSE494. All rights reserved.
//

#import "StockDetailViewController.h"

@interface StockDetailViewController()




@property NSInteger index;
@end


@implementation StockDetailViewController

Portfolio * portfolio;
NSMutableArray *holdings;

-(void) viewDidLoad
{
    portfolio = [Portfolio sharedInstance];
    holdings = [Portfolio sharedHoldings];
    _index = portfolio.index;
    [self populateLabels];
}

- (IBAction)updateShares:(id)sender
{
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *updtShares = [f numberFromString:_updtShares.text];
    NSNumber *currentShares = [portfolio.holdings[_index]numShares];
    portfolio.holdings[_index]= [[Stock alloc] init:holdings[_index][@"Symbol"] withNumShares:updtShares];
    [self.navigationController popViewControllerAnimated:YES];
    
    //Stock *stock = [[Stock alloc] init:ticker withNumShares:0];
}


-(void)populateLabels
{
    _tickerName.text = holdings[_index][@"Symbol"];
    _stockCount.text = [NSString stringWithFormat:@"%@%@",[[portfolio.holdings[_index]numShares] stringValue], @" shares, at"];
    _stockValue.text = [NSString stringWithFormat:@"%@%@%@",@"$",holdings[_index][@"LastTradePriceOnly"],@" per share for a"];
    _stockTotalVal.text = [NSString stringWithFormat:@"%@%@%@",@"$",[holdings[_index][@"HoldingsValue"] stringValue],@" total value"];
}

@end