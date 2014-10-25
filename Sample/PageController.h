//
// Created by Leo on 10/16/14.
// Copyright (c) 2014 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class ViewController;

@interface PageController : UIViewController <UIPageViewControllerDelegate, UIPageViewControllerDataSource>
@property(nonatomic, strong) UIPageViewController* pageController;
@property(nonatomic, strong) UIViewController* vc1;
@property(nonatomic, strong) UIViewController* vc2;
@property(nonatomic, strong) UIViewController* vc3;
@end