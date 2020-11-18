//
//  AppDelegate.m
//  DragProgressBar
//
//  Created by 张强 on 2020/11/18.
//

#import "AppDelegate.h"
#import "DragProgressBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //设置c初始window，作用代替Main.storyboard
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    
    DragProgressBarViewController *mainVC = [DragProgressBarViewController new];
    
    
    self.window.rootViewController = mainVC;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
