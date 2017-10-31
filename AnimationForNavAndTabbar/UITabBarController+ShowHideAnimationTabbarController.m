//
//  UITabBarController+ShowHideAnimationTabbarController.m
//  AnimationForNavAndTabbar
//
//  Created by DM on 2017/10/30.
//  Copyright © 2017年 CocoaJason. All rights reserved.
//

#import "UITabBarController+ShowHideAnimationTabbarController.h"

@implementation UITabBarController (ShowHideAnimationTabbarController)

- (void)SetHidesBottomBarWhenScrolled:(BOOL)hidden;
{
    BOOL addValue = hidden ? 50 : -50;
    [UIView animateWithDuration:UINavigationControllerHideShowBarDuration animations:^{
        for (UIView *subView in self.view.subviews)
        {
            CGRect viewFrame = subView.frame;
            if ([subView isKindOfClass:[UITabBar class]])
            {
                viewFrame.origin.y += addValue;
            }
            else
            {
                viewFrame.size.height += addValue;
            }
            [subView setFrame:viewFrame];
        }
    }];
}

@end
