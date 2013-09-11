//
//  CFCoinFlipView.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFCoinFlipUI.h"

@interface CFCoinFlipView : UIView<CFCoinFlipUI>

@property (weak, nonatomic) IBOutlet UILabel *totalHeadsField;
@property (weak, nonatomic) IBOutlet UILabel *totalTailsField;
@property (weak, nonatomic) IBOutlet UILabel *flipResultField;

-(void)updateTotalHeads:(NSUInteger)totalHeads;
-(void)updateTotalTails:(NSUInteger)totalTails;
-(void)updateFlipResultMessage:(NSString *)message;

@end
