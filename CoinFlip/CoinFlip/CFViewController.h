//
//  CFViewController.h
//  CoinFlip
//
//  Created by Edwin Peguero on 9/10/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CFCoinFlipGameModelInterface, CFCoinFlipUI;

@interface CFViewController : UIViewController

// Property Injection: Not ideal, but necessary for storyboard compatibility
@property (strong, nonatomic) id<CFCoinFlipGameModelInterface> gameModelInterface;
@property (strong, nonatomic) id<CFCoinFlipUI> gameUI;

- (IBAction)flipCoinButtonWasPressed;

@end
