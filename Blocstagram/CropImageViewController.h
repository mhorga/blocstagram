//
//  CropImageViewController.h
//  Blocstagram
//
//  Created by Marius Horga on 12/15/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import "MediaFullScreenViewController.h"

@class CropImageViewController;

@protocol CropImageViewControllerDelegate <NSObject>

-(void)cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end


@interface CropImageViewController : MediaFullScreenViewController

@property (nonatomic, weak) NSObject <CropImageViewControllerDelegate> *delegate;

-(instancetype)initWithImage:(UIImage *)sourceImage;

@end
