//
//  DataSource.h
//  Blocstagram
//
//  Created by Marius Horga on 11/26/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

@property (nonatomic, strong, readonly) NSArray *mediaItems;
+(instancetype) sharedInstance;

@end
