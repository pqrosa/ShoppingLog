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
    
    // Se o dicionário já existe, insiro o produto
    if (produtos)
    {
        [produtos addObject:[umProduto dicionarioDoProduto]];
    }
    // Se o dicionário ainda não existir, então crio e salvo o primeiro produto
    else
    {
        produtos = [NSMutableArray arrayWithObject:[umProduto dicionarioDoProduto]];
    }
    
    [defaults setObject:produtos forKey:PRODUTOS_KEY];
    [defaults synchronize];
}

@end
