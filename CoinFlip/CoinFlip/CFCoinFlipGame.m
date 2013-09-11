//
//  CFCoinFlipGame.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/10/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import "CFCoinFlipGame.h"
#import "CFCoinFaceGenerator.h"

@interface CFCoinFlipGame ()

@property (strong, nonatomic, readonly) id<CFCoinFaceGenerator> coinFaceGenerator;
@property (assign, nonatomic, readwrite) NSUInteger totalHeads;
@property (assign, nonatomic, readwrite) NSUInteger totalTails;

@end

@implementation CFCoinFlipGame

- (id)initWithCoinFaceGenerator:(id<CFCoinFaceGenerator>)coinFlipper {
    self = [super init];
    if (self != nil) {
        _coinFaceGenerator = coinFlipper;
    }
    return self;
}

- (CFFlipOutcome)flipCoin {
    CFCoinFace coinFace = [_coinFaceGenerator generateCoinFace];
    switch (coinFace) {
        case CFCoinFaceHeads:
            _totalHeads++;
            return CFFlipOutcomeHeads;
            
        case CFCoinFaceTails:
            _totalTails++;
            return CFFlipOutcomeTails;
    }
}

@end
