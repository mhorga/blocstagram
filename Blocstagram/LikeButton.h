//
//  LikeButton.h
//  Blocstagram
//
//  Created by Marius Horga on 12/11/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LikeState) {
    LikeStateNotLiked             = 0,
    LikeStateLiking               = 1,
    LikeStateLiked                = 2,
    LikeStateUnliking             = 3
};

@interface LikeButton : UIButton

/**
 The current state of the like button. Setting to LikeButtonNotLiked or LikeButtonLiked will display an empty heart or a heart, respectively. Setting to LikeButtonLiking or LikeButtonUnliking will display an activity indicator and disable button taps until the button is set to LikeButtonNotLiked or LikeButtonLiked.
 */
@property (nonatomic, assign) LikeState likeButtonState;
@property (nonatomic, assign) NSInteger *likesNumber;

@end
