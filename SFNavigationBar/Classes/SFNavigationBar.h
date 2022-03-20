//
//  SFNavigationBar.h
//  YYShop_MVVM_OC
//
//  Created by liyanyan33 on 2022/3/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SFNavigationBar : UIView

@property (nonatomic,strong) UIView   *contentView;
@property (nonatomic,strong) UIButton *backButton;
@property (nonatomic,strong) UIButton *rightButton;
@property (nonatomic,strong) UILabel  *titleLabel;
@property (nonatomic,strong) UIView   *bottomLine;

// 红点 default hidden = YES
@property (nonatomic,strong) UIView   *unReadLabel;

+ (SFNavigationBar *)navigationBar;

- (void)setUnreadLabelNeedWhiteBorder:(BOOL)needWhiteBorder;

@end

NS_ASSUME_NONNULL_END
