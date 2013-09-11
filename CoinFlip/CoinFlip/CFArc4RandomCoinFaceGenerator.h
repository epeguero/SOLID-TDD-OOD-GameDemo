//
//  CFArc4RandomCoinFaceGenerator.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFCoinFaceGenerator.h"

@interface CFArc4RandomCoinFaceGenerator : NSObject<CFCoinFaceGenerator>

-(CFCoinFace)generateCoinFace;

@end
