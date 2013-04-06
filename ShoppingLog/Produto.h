//
//  Produto.h
//  ShoppingLog
//
//  Created by Afonso Junior on 02/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Produto : NSObject
{
	NSString * nome;
	float valorUnitario;
	int quantidade;
}

@property (strong, nonatomic) NSString * nome;
@property float valorUnitario;
@property int quantidade;

- (float)total;

- (NSDictionary *)dicionarioDoProduto;

- (Produto *)initWithObject:(int)index ofNSMutableArray:(NSMutableArray *)NSMutableArray;

@end
