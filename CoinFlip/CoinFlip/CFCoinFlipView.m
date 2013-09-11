//
//  CFCoinFlipView.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import "CFCoinFlipView.h"

@interface CFCoinFlipView ()

@end

@implementation CFCoinFlipView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)updateTotalHeads:(NSUInteger)totalHeads {
    _totalHeadsField.text = [NSString stringWithFormat: @"%d", totalHeads];
}

-(void)updateTotalTails:(NSUInteger)totalTails {
    _totalTailsField.text = [NSString stringWithFormat: @"%d", totalTails];
}

-(void)updateFlipResultMessage:(NSString *)message {
    _flipResultField.text = message;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
