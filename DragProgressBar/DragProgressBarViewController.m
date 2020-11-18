//
//  DragProgressBarViewController.m
//  DragProgressBar
//
//  Created by 张强 on 2020/11/18.
//

#import "DragProgressBarViewController.h"

#define navHeight 40

@interface DragProgressBarViewController ()

@end

@implementation DragProgressBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 主view
    UIView *mainView = [UIView new];
    mainView.frame = CGRectMake(0, self.view.frame.size.height / 2 - 100 - navHeight, self.view.frame.size.width, 200);
    mainView.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:mainView];
}

@end
