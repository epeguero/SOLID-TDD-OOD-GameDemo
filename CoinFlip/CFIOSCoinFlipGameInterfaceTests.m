//
//  CFIOSCoinFlipGameInterpreter.m
//  CoinFlip
//
//  Created by Edwin Peguero on 9/11/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCMock.h"

#import "CFCoinFlipGameModel.h"
#import "CFIOSCoinFlipGameInterface.h"
#import "CFCoinFlipUI.h"

@interface CFIOSCoinFlipGameInterfaceTests : XCTestCase

@end

@implementation CFIOSCoinFlipGameInterfaceTests

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

- (void)testCoinWasFlipped_HeadsIsFlipped_UpdateUICorrectly
{
    // Arrange:
    // 1) Game model must flip heads and return mock results.
    // 2) UI must listen for expected arguments in calls.
    
    NSUInteger expectedTotalHeadsArgument = 5;
    NSString *expectedFlipResultMessage = @"Heads was flipped";
    
    OCMockObject *mockGameModel = [OCMockObject mockForProtocol:@protocol(CFCoinFlipGameModel)];
    OCMockObject *mockGameUI = [OCMockObject mockForProtocol:@protocol(CFCoinFlipUI)];
    CFIOSCoinFlipGameInterface *systemUnderTest = [[CFIOSCoinFlipGameInterface alloc] initWithGameModel:(id<CFCoinFlipGameModel>)mockGameModel];
    
    // 1)
    [[[mockGameModel stub] andReturnValue:OCMOCK_VALUE((CFFlipOutcome){CFFlipOutcomeHeads})] flipCoin];
    [[[mockGameModel stub] andReturnValue:OCMOCK_VALUE(expectedTotalHeadsArgument)] totalHeads];
    
    // 2)
    [[mockGameUI expect] updateTotalHeads:expectedTotalHeadsArgument];
    [[mockGameUI expect] updateFlipResultMessage:expectedFlipResultMessage];
    
    // Act
    void(^outputEvent)(id<CFCoinFlipUI>) = [systemUnderTest coinWasFlipped];
    outputEvent((id<CFCoinFlipUI>)mockGameUI);
    
    // Assert:verify that correct calls are made
    XCTAssertNoThrow([mockGameUI verify], @"Game results were not reported correctly");
}

@end
