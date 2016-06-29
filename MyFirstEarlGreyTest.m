//
//  MyFirstEarlGreyTest.m
//  EarlGreyBootcamp
//
//  Created by Pivotal DX209 on 2016-06-23.
//  Copyright © 2016 Pivotal. All rights reserved.
//

@import EarlGrey;

#import <XCTest/XCTest.h>


@interface MyFirstEarlGreyTest : XCTestCase

@end


@implementation MyFirstEarlGreyTest

//
// Task #0
//

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPresenceOfKeyWindow {
    [[EarlGrey selectElementWithMatcher:grey_keyWindow()]
     assertWithMatcher:grey_sufficientlyVisible()];
}

//
// Task #1
//

- (void)testSelectPivot {
    // Selects a pivot from the list
    [[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"Gordon Krull")]
     performAction:grey_tap()];
    
    // Go back to table
    id<GREYMatcher> backButtonMatcher =
    grey_allOf(grey_accessibilityLabel(@"ETT Pivots"), grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
    [[EarlGrey selectElementWithMatcher:backButtonMatcher]
     performAction:grey_tap()];
}

//
// Task #2
//

@end
