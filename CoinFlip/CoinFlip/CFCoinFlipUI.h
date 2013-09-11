//
//  CFCoinFlipUI.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFCoinFlipGameModel.h"

@protocol CFCoinFlipUI <NSObject>

-(void)updateTotalHeads:(NSUInteger)totalHeads;
-(void)updateTotalTails:(NSUInteger)totalTails;
-(void)updateFlipResultMessage:(NSString *)message;

@end
