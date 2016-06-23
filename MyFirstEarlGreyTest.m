//
//  MyFirstEarlGreyTest.m
//  EarlGreyBootcamp
//
//  Created by Pivotal DX209 on 2016-06-23.
//  Copyright © 2016 Pivotal. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface MyFirstEarlGreyTest : XCTestCase

@end

@implementation MyFirstEarlGreyTest


- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
}

- (void)testPresenceOfKeyWindow {
    [[EarlGrey selectElementWithMatcher:grey_keyWindow()]
     assertWithMatcher:grey_sufficientlyVisible()];
}

@end
