//
//  MediaFullScreenAnimator.h
//  Blocstagram
//
//  Created by Marius Horga on 12/6/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MediaFullScreenAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL presenting;
@property (nonatomic, weak) UIImageView *cellImageView;

@end