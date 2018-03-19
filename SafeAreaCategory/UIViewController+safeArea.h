
//  UIViewController+Masrony.h
//  Created by liubo on 2018/3/2.

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface UIViewController (safeArea)

- (void)am_makeSafeView:(UIView *)contentView;

- (MASViewAttribute *)am_safeLeft;

- (MASViewAttribute *)am_safeRight;

- (MASViewAttribute *)am_safeTop;

- (MASViewAttribute *)am_safeBottom;

@end
