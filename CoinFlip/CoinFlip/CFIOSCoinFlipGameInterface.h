//
//  CFCocoaTouchCoinFlipGameInterpreter.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFCoinFlipGameModelInterface.h"

@protocol CFCoinFlipGameModel;
@interface CFIOSCoinFlipGameInterface : NSObject<CFCoinFlipGameModelInterface>

-(id) initWithGameModel:(id<CFCoinFlipGameModel>)gameModel;

-(void (^)(id<CFCoinFlipUI>))coinWasFlipped;

@end
