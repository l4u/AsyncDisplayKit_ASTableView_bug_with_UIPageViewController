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
    _pageController = [[UIPageViewController alloc]
            initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
              navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
                            options: 0];
    _pageController.dataSource = self;
    _pageController.delegate = self;
    [self addChildViewController:_pageController];
    [[self view] addSubview:[_pageController view]];
    [_pageController didMoveToParentViewController:self];

    NSArray* controllers = @[[ViewController new]];
    [_pageController setViewControllers:controllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    return [ViewController new];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    return [ViewController new];
}
@end