//
//  CFViewControllerTests.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCMock.h"

#import "CFViewController.h"
#import "CFCoinFlipGameModelInterface.h"

@interface CFViewControllerTests : XCTestCase

@end

@implementation CFViewControllerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testFlipCoinButtonWasPressed_Triggered_FlipsCoin
{
    // Arrange:
    // 1) Mock game interface must listen to coin flip
    // 2) Inject mock game model interface into view controller
    
    OCMockObject *mockGameModelInterface = [OCMockObject mockForProtocol:@protocol(CFCoinFlipGameModelInterface)];
    
    // 1)
    [[mockGameModelInterface expect] coinWasFlipped];
    
    // 2)
    CFViewController *systemUnderTest = [[CFViewController alloc] initWithGameModelInterface:(id<CFCoinFlipGameModelInterface>)mockGameModelInterface];
    
    // Act: simulate user pressing the "flip coin" button
    [systemUnderTest flipCoinButtonWasPressed];
    
    // Assert: check that the model received a "flip coin" request
    XCTAssertNoThrow([mockGameModelInterface verify], @"The game model did not perform a coin flip");
}

@end
