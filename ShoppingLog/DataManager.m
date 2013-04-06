//
//  DataManager.m
//  ShoppingLog
//
//  Created by Sonia Ribeiro on 04/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import "DataManager.h"
#import "Produto.h"

#define PRODUTOS_KEY @"produtos"

@implementation DataManager

+ (void)salvarProduto:(Produto *)umProduto
{
    // Pego os dados 'defaults' salvos no aparelho
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // Tentamos pegar o dicionário de produtos
    NSMutableArray *produtos = [defaults mutableArrayValueForKey:PRODUTOS_KEY];
    
    // Se o dicionário de produtos já existe, insiro o dicionário do produto no dicionário de produtos
    if (produtos)
    {
        [produtos addObject:[umProduto dicionarioDoProduto]];
        NSLog(@"Inserindo o produto em um dicionário existente.");
    }
    // Se o dicionário de produtos ainda não existir, então o crio e salvo o primeiro dicionário de produto no dicionário de produtos
    else
    {
        produtos = [NSMutableArray arrayWithObject:[umProduto dicionarioDoProduto]];
        NSLog(@"Inserindo o produto em um novo dicionário.");
    }
    
    [defaults setObject:produtos forKey:PRODUTOS_KEY];
    [defaults synchronize];
}

+ (NSMutableArray *)recuperarProdutos
{
    // Pego os dados 'defaults' salvos no aparelho
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // Tentamos pegar o dicionário de produtos
    NSMutableArray *produtos = [defaults mutableArrayValueForKey:PRODUTOS_KEY];
    
    // Se o dicionário já existe, o retorno
    if (produtos)
    {
        return produtos;
    }
    // Se o dicionário ainda não existir, então retorno nulo
    else
    {
        return nil;
    }
}

@end
