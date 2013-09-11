//
//  CFCoinFlipGame.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/10/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFCoinFlipGameModel.h"

@protocol CFCoinFaceGenerator;
@interface CFCoinFlipGame : NSObject<CFCoinFlipGameModel>

- (id)initWithCoinFaceGenerator:(id<CFCoinFaceGenerator>)generator;

// Game Steps
- (CFFlipOutcome)flipCoin;

// Game Data
@property (assign, nonatomic, readonly) NSUInteger totalHeads;
@property (assign, nonatomic, readonly) NSUInteger totalTails;

@end
