//
//  UIView+TapBlock.h
//  self
//
//  Created by eee on 2017/10/20.
//  Copyright © 2017年 eeee. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (TapBlock)

- (void)dg_Tapped:(void(^)(void))tappBlock;

@end
