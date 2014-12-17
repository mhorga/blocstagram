//
//  UserTests.m
//  Blocstagram
//
//  Created by Marius Horga on 12/17/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "User.h"
#import "Comment.h"
#import "Media.h"

@interface UserTests : XCTestCase

@end

@implementation UserTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatUserInitializationWorks {
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"username" : @"d'oh",
                                       @"full_name" : @"Homer Simpson",
                                       @"profile_picture" : @"http://www.example.com/example.jpg"};
    User *testUser = [[User alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testUser.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testUser.userName, sourceDictionary[@"username"], @"The username should be equal");
    XCTAssertEqualObjects(testUser.fullName, sourceDictionary[@"full_name"], @"The full name should be equal");
    XCTAssertEqualObjects(testUser.profilePictureURL, [NSURL URLWithString:sourceDictionary[@"profile_picture"]], @"The profile picture should be equal");
}

- (void)testThatCommentInitializationWorks {
    NSDictionary *sourceDictionary = @{@"id": @"8675309", @"text" : @"Sample Comment"};
    Comment *testComment = [[Comment alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testComment.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testComment.text, sourceDictionary[@"text"], @"The text should be equal");
}

- (void)testThatMediaInitializationWorks {
    NSDictionary *sourceDictionary = @{@"id": @"12345", @"url" : @"http://www.example.com"};
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL, sourceDictionary[@"user_has_liked"], @"The url should be equal");
}

- (void)testSetText {
    // Write a test that ensures [BLCComposeCommentView -setText:] sets isWritingComment to YES if there's text, and another to ensure that it's set to NO if there's not text.
}

- (void)testHeightForMediaItem {
    // Write a variety of tests to ensure that [BLCMediaTableViewCell +heightForMediaItem:width:] returns accurate heights. You may need to add sample images to your project's test bundle to accomplish this.
}

@end
