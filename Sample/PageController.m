//
// Created by Leo on 10/16/14.
// Copyright (c) 2014 Facebook. All rights reserved.
//

#import "PageController.h"
#import "ViewController.h"


@implementation PageController {

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.vc1 = [ViewController new];
    self.vc2 = [ViewController new];
    self.vc3 = [ViewController new];
    
    _pageController = [[UIPageViewController alloc]
            initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
              navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
                            options: 0];
    _pageController.dataSource = self;
    _pageController.delegate = self;
    [self addChildViewController:_pageController];
    [[self view] addSubview:[_pageController view]];
    [_pageController didMoveToParentViewController:self];

    NSArray* controllers = @[self.vc2];
    [_pageController setViewControllers:controllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    if (viewController == self.vc1) {
        return self.vc3;
    } else if (viewController == self.vc2) {
        return self.vc1;
    } else {
        return self.vc2;
    }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    if (viewController == self.vc1) {
        return self.vc2;
    } else if (viewController == self.vc2) {
        return self.vc3;
    } else {
        return self.vc1;
    }
}
@end