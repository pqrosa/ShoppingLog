//
//  InserirPedidosViewController.h
//  ShoppingLog
//
//  Created by Afonso Junior on 02/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InserirProdutoViewController : UIViewController

- (IBAction)tocouBotaoSalvar:(UIButton *)sender;
- (IBAction)digitouProduto:(UITextField *)sender;
- (IBAction)alterouQuantidade:(UISlider *)sender;
- (IBAction)digitouNumero:(UITextField *)sender;

@property (strong, nonatomic) IBOutlet UITextField *produtoTxtField;
@property (strong, nonatomic) IBOutlet UITextField *valorUnitarioTxtField;
@property (strong, nonatomic) IBOutlet UISlider *quantSlider;
@property (strong, nonatomic) IBOutlet UILabel *quant;

@end
