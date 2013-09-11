//
//  CFCoinFlipGameContract.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFCoinFaceGenerator.h"

typedef enum {
    CFFlipOutcomeHeads,
    CFFlipOutcomeTails
} CFFlipOutcome;

@protocol CFCoinFlipGameModel <NSObject>

// Game Steps
- (CFFlipOutcome)flipCoin;

// Game Data
@property (assign, nonatomic, readonly) NSUInteger totalHeads;
@property (assign, nonatomic, readonly) NSUInteger totalTails;

@end
