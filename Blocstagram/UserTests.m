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
#import "ComposeCommentView.h"
#import "MediaTableViewCell.m"

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
    ComposeCommentView *ccView = [[ComposeCommentView alloc] init];
    ccView.text = @"text";
    XCTAssertTrue(ccView.isWritingComment == YES);
    ccView.text = nil;
    XCTAssertTrue(ccView.isWritingComment == NO);
}

- (void)testHeightForMediaItem {
    NSURL *url = [[NSURL alloc] initWithString:@"http://blocblog.s3.amazonaws.com/2014/11/Bloc-logo-rectangle-grey.jpg"];
    NSDictionary *sourceDictionary = @{@"url" : url};
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    UIImage *testImage = [[UIImage alloc] initWithData:[[NSData alloc] initWithContentsOfURL:url]];
    CGFloat height = testImage.size.height;
    
    XCTAssertEqual(height, [MediaTableViewCell heightForMediaItem:testMedia width:height]);
}

@end
