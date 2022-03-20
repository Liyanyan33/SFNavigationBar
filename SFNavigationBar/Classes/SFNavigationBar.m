//
//  SFNavigationBar.m
//  YYShop_MVVM_OC
//
//  Created by liyanyan33 on 2022/3/17.
//

#import "SFNavigationBar.h"

@interface SFNavigationBar ()

@end

@implementation SFNavigationBar

+ (SFNavigationBar *)navigationBar {
    SFNavigationBar *bar = [[SFNavigationBar alloc] init];
    CGSize sz = [UIScreen mainScreen].bounds.size;
    bar.frame = CGRectMake(.0f,.0f, sz.width, 64.0f);
    return bar;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self.contentView addSubview:self.backButton];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.rightButton];
        [self.contentView addSubview:self.unReadLabel];
        
        [self addSubview:self.contentView];
        [self addSubview:self.bottomLine];
    }
    return self;
}

#pragma mark setter getter
- (UIView *)contentView {
    if (nil == _contentView) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _contentView = [[UIView alloc] initWithFrame:CGRectMake(.0f,20.0f,sz.width,44.0f)];
        _contentView.backgroundColor = [UIColor whiteColor];
    }
    return _contentView;
}

- (UIButton *)backButton {
    if (nil == _backButton) {
        _backButton = [[UIButton alloc] initWithFrame:CGRectMake(.0f,.0f,44.0f,44.0f)];
        [_backButton setImage:[UIImage imageNamed:@"snc_navBack"]
                      forState:UIControlStateNormal];
        [_backButton setImage:[UIImage imageNamed:@"snc_navBack_hl"]
                      forState:UIControlStateHighlighted];
        _backButton.accessibilityLabel = @"返回";
    }
    return _backButton;
}

- (UIButton *)rightButton {
    if (nil == _rightButton) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _rightButton = [[UIButton alloc] initWithFrame:CGRectMake(sz.width-44.0f,.0f,44.0f,44.0f)];
        [_rightButton setImage:[UIImage imageNamed:@"snc_navMore_more"]
                      forState:UIControlStateNormal];
        [_rightButton setImage:[UIImage imageNamed:@"snc_navMore_more"]
                      forState:UIControlStateHighlighted];
        _rightButton.accessibilityLabel = @"更多";
    }
    return _rightButton;
}

- (UIView *)unReadLabel {
    if (nil == _unReadLabel) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _unReadLabel = [[UIView alloc] init];
        _unReadLabel.frame = CGRectMake(sz.width-16.0f,6.0f,8.0f,8.0f);
        _unReadLabel.backgroundColor = [UIColor colorWithRed:248/255.0f green:5/255.0f blue:49/255.0f alpha:1.0f];
        _unReadLabel.layer.cornerRadius = 4.0f;
        _unReadLabel.hidden = YES;
    }
    return _unReadLabel;
}

- (UILabel *)titleLabel {
    if (nil == _titleLabel) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.frame = CGRectMake(44.0f,.0f,sz.width-88.0f,44.0f);
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textColor = [UIColor colorWithRed:68/255.0f green:68/255.0f  blue:68/255.0f  alpha:1];
        _titleLabel.font      = [UIFont systemFontOfSize:17.0f];
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    return _titleLabel;
}

- (UIView *)bottomLine {
    if (nil == _bottomLine) {
        CGSize sz   = [UIScreen mainScreen].bounds.size;
        _bottomLine = [[UIView alloc] initWithFrame:CGRectMake(.0f,63.5f,sz.width,0.5)];
        UIColor *color = [UIColor colorWithRed:230/255.0f green:230/255.0f blue:230/255.0f alpha:1.0f];
        _bottomLine.backgroundColor = color;
    }
    return _bottomLine;
}

- (void)setUnreadLabelNeedWhiteBorder:(BOOL)needWhiteBorder {
    
}

@end
