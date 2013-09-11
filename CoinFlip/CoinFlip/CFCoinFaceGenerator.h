//
//  CFRandomNumberGenerator.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/10/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    CFCoinFaceHeads,
    CFCoinFaceTails
} CFCoinFace;

@protocol CFCoinFaceGenerator <NSObject>

-(CFCoinFace)generateCoinFace;

@end
