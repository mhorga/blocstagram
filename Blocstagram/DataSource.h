//
//  DataSource.h
//  Blocstagram
//
//  Created by Marius Horga on 11/26/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Media;

typedef void (^NewItemCompletionBlock)(NSError *error);

@interface DataSource : NSObject

@property (nonatomic, strong, readonly) NSArray *mediaItems;

+(instancetype) sharedInstance;

- (void) deleteMediaItem:(Media *)item;
- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

@end
