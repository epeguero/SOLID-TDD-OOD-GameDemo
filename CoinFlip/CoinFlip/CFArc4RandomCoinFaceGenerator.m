//
//  CFArc4RandomCoinFaceGenerator.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import "CFArc4RandomCoinFaceGenerator.h"

@implementation CFArc4RandomCoinFaceGenerator

-(CFCoinFace)generateCoinFace {
    NSUInteger randomNumber = arc4random() % 2;
    BOOL isHeads = randomNumber == 1;
    if (isHeads) {
        return CFCoinFaceHeads;
    } else {
        return CFCoinFaceTails;
    }
}

@end
