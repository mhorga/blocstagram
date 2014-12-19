//
//  ImageCollectionViewCell.m
//  Blocstagram
//
//  Created by Marius Horga on 12/19/14.
//  Copyright (c) 2014 Marius Horga. All rights reserved.
//

#import "ImageCollectionViewCell.h"

@implementation ImageCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    self.imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.clipsToBounds = YES;
    
    [self.contentView addSubview:self.imageView];
    
    return self;
}

@end
