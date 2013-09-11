//
//  CoinFlipTests.m
//  CoinFlipTests
//
//  Created by Edwin Peguero on 9/10/13.
//  Copyright (c) 2013 Edwin Peguero. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCMock.h"

#import "CFCoinFlipGame.h"
#import "CFCoinFaceGenerator.h"




@interface CoinFlipGameTests : XCTestCase

@end

@implementation CoinFlipGameTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testInitWithCoinFaceGenerator_Called_CorrectlyInitializes
{
    // Arrange
    OCMockObject *mockNumberGenerator = [OCMockObject mockForProtocol:@protocol(CFCoinFaceGenerator)];
    
    // Act: initializer = action
    CFCoinFlipGame *systemUnderTest = [[CFCoinFlipGame alloc] initWithCoinFaceGenerator:(id<CFCoinFaceGenerator>)mockNumberGenerator];
    
    // Assert
    XCTAssertEquals((NSUInteger)0, systemUnderTest.totalHeads, @"Failed to correctly initialize totalHeads");
    XCTAssertEquals((NSUInteger)0, systemUnderTest.totalTails, @"Failed to correctly initialize totalTails");
}

- (void)testFlip_HeadIsFlipped_IncrementsTotalHeads
{
    // Arrange: force a heads coin flip
    OCMockObject *mockNumberGenerator = [OCMockObject mockForProtocol:@protocol(CFCoinFaceGenerator)];
    
    [[[mockNumberGenerator stub] andReturnValue:OCMOCK_VALUE((CFCoinFace){CFCoinFaceHeads})] generateCoinFace];
    
    CFCoinFlipGame *systemUnderTest = [[CFCoinFlipGame alloc] initWithCoinFaceGenerator:(id<CFCoinFaceGenerator>)mockNumberGenerator];
    
    // Act
    [systemUnderTest flipCoin];
    
    // Assert: heads was incremented to 1
    XCTAssertEquals((NSUInteger)1, systemUnderTest.totalHeads, @"Failed to record head flip event correctly");
}

- (void)testFlip_TailIsFlipped_IncrementsTotalTails
{
    // Arrange: force a heads coin flip
    OCMockObject *mockNumberGenerator = [OCMockObject mockForProtocol:@protocol(CFCoinFaceGenerator)];
    
    [[[mockNumberGenerator stub] andReturnValue:OCMOCK_VALUE((CFCoinFace){CFCoinFaceTails})] generateCoinFace];
    
    CFCoinFlipGame *systemUnderTest = [[CFCoinFlipGame alloc] initWithCoinFaceGenerator:(id<CFCoinFaceGenerator>)mockNumberGenerator];
    
    // Act
    [systemUnderTest flipCoin];
    
    // Assert: heads was incremented to 1
    XCTAssertEquals((NSUInteger)1, systemUnderTest.totalTails, @"Failed to record tails flip event correctly");
}

@end
