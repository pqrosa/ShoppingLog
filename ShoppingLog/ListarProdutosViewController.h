//
//  ListarProdutosViewController.h
//  ShoppingLog
//
//  Created by Philippe Rosa on 4/5/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListarProdutosViewController : UITableViewController{
    NSMutableArray * produtos;
}

@property (nonatomic, strong) NSMutableArray * produtos;

@end
