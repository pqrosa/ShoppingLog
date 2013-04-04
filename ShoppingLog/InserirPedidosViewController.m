//
//  InserirPedidosViewController.m
//  ShoppingLog
//
//  Created by Afonso Junior on 02/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import "InserirPedidosViewController.h"
#import "Produto.h"

@interface InserirPedidosViewController ()

@end

@implementation InserirPedidosViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
								   initWithTarget:self
								   action:@selector(dismissKeyboard)];
	
	[self.view addGestureRecognizer:tap];
	
	self.quant.text = [NSString stringWithFormat:@"%d", (int) self.quantSlider.value];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tocouBotaoSalvar:(UIButton *)sender {
	
	Produto * _produto = [[Produto alloc] init];
	_produto.nome = self.produtoTxtField.text;
	_produto.valorUnitario = [self.valorUnitarioTxtField.text floatValue];
	_produto.quantidade = self.quantSlider.value;
	
	NSLog(@"%d unidades do Produto %@ custam %0.2f", _produto.quantidade, _produto.nome, [_produto total]);
}

- (IBAction)digitouProduto:(UITextField *)sender {
	[self.valorUnitarioTxtField becomeFirstResponder];
}

- (IBAction)alterouQuantidade:(UISlider *)sender {
	self.quant.text = [NSString stringWithFormat:@"%d", (int) sender.value];
	NSLog(@"%f", sender.value);
}

// TODO: Consertar bug que quebra o aplicativo quando todo número é apagado.
- (IBAction)digitouNumero:(UITextField *)sender {
    int numDigitos = [sender.text length];
    NSLog(@"Digitos: %d", numDigitos);
    
    int digito = (int) [sender.text characterAtIndex:[sender.text length] -1];
    NSLog(@"Numero digitado: %c", digito);

}

-(void)dismissKeyboard {
	[self.produtoTxtField resignFirstResponder];
	[self.valorUnitarioTxtField resignFirstResponder];
}
@end









