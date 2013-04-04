//
//  Produto.m
//  ShoppingLog
//
//  Created by Afonso Junior on 02/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import "Produto.h"

@implementation Produto

@synthesize nome, valorUnitario, quantidade;

-(float)total
{
	return self.quantidade * self.valorUnitario;
}

- (NSDictionary *)dicionarioDoProduto
{
    return [NSDictionary dictionaryWithObjectsAndKeys:
            self.nome, @"nome",
            [NSNumber numberWithFloat:self.valorUnitario], @"valorUnitario",
            [NSNumber numberWithInt:self.quantidade], @"quantidade",nil];
}

@end
