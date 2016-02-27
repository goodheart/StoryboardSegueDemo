//
//  PMSecondViewController.m
//  20160227storyboardSeceen
//
//  Created by majian on 16/2/27.
//  Copyright © 2016年 majian. All rights reserved.
//

#import "PMSecondViewController.h"

@implementation PMSecondViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (self.navigationController == nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
