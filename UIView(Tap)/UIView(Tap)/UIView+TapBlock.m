//
//  UIView+TapBlock.m
//  self
//
//  Created by eeee on 2017/10/20.
//  Copyright © 2017年 eeee. All rights reserved.
//

#import "UIView+TapBlock.h"
#import <objc/runtime.h>

typedef void(^TapBlock)(void); //声明类型

@interface UIView ()

@property (nonatomic,copy) TapBlock TapBlock; //点击按钮

@end

@implementation UIView (TapBlock)

//static char KUIViewPropertyTap = "KUIViewPropertyTap";
static void *KUIViewPropertyTap = &KUIViewPropertyTap;


- (void)setTapBlock:(TapBlock)TapBlock{
    objc_setAssociatedObject(self, &KUIViewPropertyTap, TapBlock, OBJC_ASSOCIATION_COPY);
}

-(TapBlock)TapBlock{
   return  objc_getAssociatedObject(self, &KUIViewPropertyTap);
}

- (void)dg_Tapped:(void(^)(void))tappBlock{
    
    self.TapBlock = tappBlock;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    [self addGestureRecognizer:tapGesture];
    
}

// 单击view
- (void)viewTapped {
    self.TapBlock?self.TapBlock():nil;
}
@end
