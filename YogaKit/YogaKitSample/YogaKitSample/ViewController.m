/**
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE-examples file in the root directory of this source tree.
 */

#import "ViewController.h"

#import <YogaKit/UIView+Yoga.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIView *root = self.view;
    root.backgroundColor = [UIColor redColor];
    root.yoga.isEnabled = YES;
    root.yoga.width = self.view.bounds.size.width;
    root.yoga.height = self.view.bounds.size.height;
    root.yoga.alignItems = YGAlignCenter;
    root.yoga.justifyContent = YGJustifyCenter;

    UIView *child1 = [UIView new];
    child1.backgroundColor = [UIColor blueColor];
    child1.yoga.isEnabled = YES;
    child1.yoga.width = 100;
    child1.yoga.height = 100;

    UIView *child2 = [UIView new];
    child2.backgroundColor = [UIColor greenColor];
    child2.frame = (CGRect) {
        .size = {
            .width = 200,
            .height = 100,
        }
    };

    UIView *child3 = [UIView new];
    child3.backgroundColor = [UIColor yellowColor];
    child3.frame = (CGRect) {
        .size = {
            .width = 100,
            .height = 100,
        }
    };

    [child2 addSubview:child3];
    [root addSubview:child1];
    [root addSubview:child2];
    [root.yoga applyLayout];
}


@end
