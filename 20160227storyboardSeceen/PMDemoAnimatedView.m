//
//  PMDemoAnimatedView.m
//  20160227storyboardSeceen
//
//  Created by majian on 16/2/27.
//  Copyright © 2016年 majian. All rights reserved.
//

#import "PMDemoAnimatedView.h"

@interface PMDemoAnimatedView ()
//view
@property (nonatomic,strong) UIView * topView;
@property (nonatomic,strong) UIView * bottomView;


@end

IB_DESIGNABLE
@implementation PMDemoAnimatedView

@synthesize topViewColor = _topViewColor;
@synthesize bottomViewColor = _bottomViewColor;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _initializeSubvies];
    }
    
    return self;
}

- (void)awakeFromNib {
    [self _initializeSubvies];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat height = CGRectGetHeight(self.frame);
    
    self.topView.frame = CGRectMake(0, 0, width, height / 2);
    CGFloat bottomViewY = CGRectGetMaxY(self.topView.frame);
    self.bottomView.frame = CGRectMake(0, bottomViewY, width, height / 2);
}

- (void)setTopViewColor:(UIColor *)topViewColor {
    if (topViewColor == _topViewColor) {
        return;
    }
    
    self.topView.backgroundColor = topViewColor;
    _topViewColor = topViewColor;
}

- (UIColor *)topViewColor {
    if (_topViewColor == nil) {
        return [UIColor orangeColor];
    }
    
    return _topViewColor;
}

- (void)setBottomViewColor:(UIColor *)bottomViewColor {
    if (bottomViewColor == _bottomViewColor) {
        return;
    }
    
    self.bottomView.backgroundColor = bottomViewColor;
    _bottomViewColor = bottomViewColor;
}

- (UIColor *)bottomViewColor {
    if (_bottomViewColor == nil) {
        return [UIColor purpleColor];
    }
    
    return _bottomViewColor;
}

#pragma mark - Private Method
- (void)_initializeSubvies {
    [self addSubview:self.topView];
    [self addSubview:self.bottomView];
}

#pragma mark - Lazy Initialization
- (UIView *)topView {
    if (_topView) {
        return _topView;
    }
    
    _topView = [UIView new];
    _topView.backgroundColor = self.topViewColor;
    
    return _topView;
}

- (UIView *)bottomView {
    if (_bottomView) {
        return _bottomView;
    }
    
    _bottomView = [UIView new];
    _bottomView.backgroundColor = self.bottomViewColor;
    
    return _bottomView;
}

@end
