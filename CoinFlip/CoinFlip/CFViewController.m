//
//  CFViewController.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/10/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import "CFViewController.h"
#import "CFCoinFlipUI.h"
#import "CFCoinFlipGame.h"
#import "CFCoinFlipGameModel.h"
#import "CFCoinFlipGameModelInterface.h"

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)flipCoinButtonWasPressed {
    void(^outputEvent)(id<CFCoinFlipUI>) = [_gameModelInterface coinWasFlipped];
    [self handleOutputEvent: outputEvent];
}

- (void)handleOutputEvent:(void(^)(id<CFCoinFlipUI>))outputEvent {
    if (outputEvent != nil) {
        outputEvent(self.coinFlipView);
    }
}

- (id<CFCoinFlipUI>) coinFlipView {
    return (id<CFCoinFlipUI>)self.view;
}
@end
