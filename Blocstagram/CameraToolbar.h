//
//  CameraToolbar.h
//  Blocstagram
//
//  Created by Marius Horga on 12/14/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CameraToolbar;

@protocol CameraToolbarDelegate <NSObject>

- (void) leftButtonPressedOnToolbar:(CameraToolbar *)toolbar;
- (void) rightButtonPressedOnToolbar:(CameraToolbar *)toolbar;
- (void) cameraButtonPressedOnToolbar:(CameraToolbar *)toolbar;

@end


@interface CameraToolbar : UIView

@property (nonatomic, weak) NSObject <CameraToolbarDelegate> *delegate;

- (instancetype) initWithImageNames:(NSArray *)imageNames;

@end