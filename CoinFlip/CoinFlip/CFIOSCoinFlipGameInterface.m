//
//  CFCocoaTouchCoinFlipGameInterpreter.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import "CFIOSCoinFlipGameInterface.h"
#import "CFCoinFlipGameModel.h"
#import "CFCoinFlipUI.h"

@interface CFIOSCoinFlipGameInterface ()

@property (strong, nonatomic, readonly) id<CFCoinFlipGameModel> gameModel;

@end

@implementation CFIOSCoinFlipGameInterface

-(id)initWithGameModel:(id<CFCoinFlipGameModel>)gameModel {
    self = [super init];
    if (self != nil) {
        _gameModel = gameModel;
    }
    return self;
}

-(void (^)(id<CFCoinFlipUI>))coinWasFlipped {
    CFFlipOutcome flipOutcome = [_gameModel flipCoin];
    
    return ^void(id<CFCoinFlipUI> coinFlipUI) {
        
        NSString *flipResultMessage;
        
        switch (flipOutcome) {
            case CFFlipOutcomeHeads:
                [coinFlipUI updateTotalHeads:[_gameModel totalHeads]];
                flipResultMessage = @"Heads was flipped";
                break;
                
            case CFFlipOutcomeTails:
                [coinFlipUI updateTotalTails:[_gameModel totalTails]];
                flipResultMessage = @"Tails was flipped";
                break;
        }
        
        [coinFlipUI updateFlipResultMessage:flipResultMessage];
        
    };
}

@end
