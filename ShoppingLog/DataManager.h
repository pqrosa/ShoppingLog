//
//  DataManager.h
//  ShoppingLog
//
//  Created by Sonia Ribeiro on 04/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import <Foundation/Foundation.h>

// Um import "safado". É uma declaração. Geralmente fazemos o import quando temos herança ou protocolos. Mas no .m a gente tem que importar mesmo.
@class Produto;

@interface DataManager : NSObject

+ (void)salvarProduto:(Produto *)umProduto;

// TODO: Criar um método que retorna um array de produtos

@end
