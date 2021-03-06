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
    
    // Tentamos pegar o NSMutableArray contendo os dicionários de produtos
    NSMutableArray *produtos = [defaults mutableArrayValueForKey:PRODUTOS_KEY];
    
    // Se o NSMutableArray já existe, insiro o dicionário de produto nele
    if (produtos)
    {
        [produtos addObject:[umProduto dicionarioDoProduto]];
        NSLog(@"Inserindo o produto em um dicionário existente.");
    }
    // Se o NSMutableArray ainda não existir, então o crio e salvo o primeiro dicionário de produto nele
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
    
    // Tentamos pegar o NSMutableArray que contém dicionários de produtos
    NSMutableArray *produtos = [defaults mutableArrayValueForKey:PRODUTOS_KEY];
    
    // Se o NSMutableArray já existe, o retorno
    if (produtos)
    {
        return produtos;
    }
    // Se o NSMutableArray ainda não existir, então retorno nulo
    else
    {
        return nil;
    }
}

@end
