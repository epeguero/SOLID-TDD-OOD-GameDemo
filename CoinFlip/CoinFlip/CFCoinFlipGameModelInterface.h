//
//  CFCoinFlipGameInterpreter.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CFCoinFlipUI;

@protocol CFCoinFlipGameModelInterface <NSObject>

- (void(^)(id<CFCoinFlipUI>))coinWasFlipped;

@end
