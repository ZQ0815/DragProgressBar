//
//  SLProgressView.m
//  DragProgressBar
//
//  Created by 张强 on 2020/11/18.
//

#import "SLProgressView.h"

#define SLProgressBorderWidth 2.0f
#define SLProgressPadding 1.0f
#define SLProgressColor [UIColor colorWithRed:0/255.0 green:191/255.0 blue:255/255.0 alpha:1]

@interface SLProgressView ()

@property (nonatomic, strong) UIView *borderView;
@property (nonatomic, strong) UIView *processView;

@end

@implementation SLProgressView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.borderView];
        [self addSubview:self.processView];
    }
    return  self;
}

- (UIView *) borderView {
    if (!_borderView) {
        _borderView = [[UIView alloc] initWithFrame:self.bounds];
        _borderView.layer.cornerRadius = self.bounds.size.height * 0.5;
        _borderView.backgroundColor = [UIColor clearColor];
        _borderView.layer.borderColor = [SLProgressColor CGColor];
        _borderView.layer.borderWidth = SLProgressBorderWidth;
    }
    return _borderView;
}

- (UIView *) processView {
    if (!_processView) {
        _processView = [UIView new];
        _processView.backgroundColor = SLProgressColor;
        _processView.layer.cornerRadius = (self.bounds.size.height - (SLProgressBorderWidth + SLProgressPadding) * 2) * 0.5;
    }
    return _processView;
}

- (void)setProgress:(CGFloat)progress
{
    if (progress >= 1){
        progress = 1;
    }
    if (progress <= 0){
        progress = 0;
    }
    _progress = progress;
    CGFloat margin = SLProgressBorderWidth + SLProgressPadding;
    CGFloat maxWidth = self.bounds.size.width - margin * 2;
    CGFloat heigth = self.bounds.size.height - margin * 2;
    
    _processView.frame = CGRectMake(margin, margin, maxWidth * progress, heigth);
}

@end
