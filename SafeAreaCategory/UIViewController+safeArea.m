//  UIViewController+Masrony.m
//  Created by liubo on 2018/3/2.

#import "UIViewController+safeArea.h"

@implementation UIViewController (safeArea)

- (void)am_makeSafeView:(UIView *)contentView {
    if (!contentView) return;

    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo([self am_safeLeft]);
        make.right.equalTo([self am_safeRight]);
        make.top.equalTo([self am_safeTop]);
        make.bottom.equalTo([self am_safeBottom]);
    }];
}

- (MASViewAttribute *)am_safeLeft {
    if (@available(iOS 11.0, *)) {
        return self.view.mas_safeAreaLayoutGuideLeft;
    } else {
        return self.view.mas_left;
    }
}

- (MASViewAttribute *)am_safeRight {
    if (@available(iOS 11.0, *)) {
        return self.view.mas_safeAreaLayoutGuideRight;
    } else {
        return self.view.mas_right;
    }
}

- (MASViewAttribute *)am_safeTop {
    if (@available(iOS 11.0, *)) {
        return self.view.mas_safeAreaLayoutGuideTop;
    } else {
        return self.mas_topLayoutGuideBottom;
    }
}

- (MASViewAttribute *)am_safeBottom {
    if (@available(iOS 11.0, *)) {
        return self.view.mas_safeAreaLayoutGuideBottom;
    } else {
        return self.mas_bottomLayoutGuideTop;
    }
}

@end
