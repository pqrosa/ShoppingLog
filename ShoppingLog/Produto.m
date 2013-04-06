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

- (Produto *)initWithObject:(int)index ofNSMutableArray:(NSMutableArray *)_NSMutableArray
{
    Produto *retorno = [[Produto alloc] init];
    
    // Acessar o elemento index do MutableArray
    NSDictionary *produto = [[NSDictionary alloc] initWithDictionary:[_NSMutableArray objectAtIndex:index]];
    
    // Fazer parse do NSDictionary retornado acima para popular o produto
    retorno.nome = [produto objectForKey:@"nome"];
    retorno.valorUnitario = [[produto objectForKey:@"valorUnitario"] floatValue];
    retorno.quantidade = [[produto objectForKey:@"quantidade"] intValue];
    
    return retorno;
}

@end
