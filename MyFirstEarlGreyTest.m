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

- (void)testEnterCommentAndSubmit {
    // Iterate through each pivot
    for (int i = 0; i < 3; i++) { // hardcoded
        
        // Matcher
        id<GREYMatcher> tableRowMatcher = grey_accessibilityLabel([NSString stringWithFormat:@"%ld", (long)i]);
        
        // Select the table row matching current index
        [[EarlGrey selectElementWithMatcher:tableRowMatcher]
         performAction:grey_tap()];
        
        // Match the comment field button and enter text
        id<GREYMatcher> commentFieldMatcher =
        grey_allOf(grey_accessibilityLabel(@"CommentField"), grey_sufficientlyVisible(), nil);
        [[EarlGrey selectElementWithMatcher:commentFieldMatcher]
         performAction:grey_typeText(@"Test")];
        
        // Match the submit button and tap
        id<GREYMatcher> submitButtonMatcher = grey_allOf(grey_accessibilityLabel(@"Submit"), grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
        [[EarlGrey selectElementWithMatcher:submitButtonMatcher]
         performAction:grey_tap()];
        
        // Match the OK button and tap
        id<GREYMatcher> okButtonMatcher = grey_allOf(grey_accessibilityLabel(@"OK"), grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
        [[EarlGrey selectElementWithMatcher:okButtonMatcher]
         performAction:grey_tap()];
        
        // Go back to table
        id<GREYMatcher> backButtonMatcher =
        grey_allOf(grey_accessibilityLabel(@"ETT Pivots"), grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
        [[EarlGrey selectElementWithMatcher:backButtonMatcher]
         performAction:grey_tap()];
    }
    
    
}

@end
