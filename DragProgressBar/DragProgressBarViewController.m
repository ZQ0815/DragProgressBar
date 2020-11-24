//
//  DragProgressBarViewController.m
//  DragProgressBar
//
//  Created by 张强 on 2020/11/18.
//

#import "DragProgressBarViewController.h"
#import "SLProgressView.h"

#define navHeight 40

@interface DragProgressBarViewController ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) SLProgressView *slProgressView;
@property (nonatomic, assign) CGFloat progress;

@end

@implementation DragProgressBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *mainView = [UIView new];
    mainView.frame = CGRectMake(0, self.view.frame.size.height / 2 - 100 - navHeight, self.view.frame.size.width, 200);
    mainView.backgroundColor = [UIColor grayColor];
    
    [mainView addSubview:self.slProgressView];
    [self.view addSubview:mainView];
    
    [self.slProgressView setProgress:self.progress];
    [self addTimer];
}

- (SLProgressView *)slProgressView {
    if (!_slProgressView) {
        _slProgressView = [[SLProgressView alloc] initWithFrame:CGRectMake(0, 95, 200, 10)];
    }
    return _slProgressView;
}

- (CGFloat)progress {
    if (!_progress) {
        _progress = 0.5;
    }
    return _progress;
}

#pragma mark - Timer

- (void)addTimer {
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(refalshProgress:) userInfo:nil repeats:YES];
}


- (void)removeTimer
{
    [_timer invalidate];
    _timer = nil;
}

#pragma mark - userMethods

- (void)refalshProgress:(NSTimer *)theTimer {
    if (_progress < 1) {
        _progress += 0.05;                   
        [self.slProgressView setProgress:self.progress];
    }
    else {
        [self removeTimer];
        _timer = nil;
    }
}

@end
