//
//  ViewController.m
//  20160227storyboardSeceen
//
//  Created by majian on 16/2/27.
//  Copyright © 2016年 majian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
}

- (IBAction)presentButtonAction:(UIButton *)sender {
    [self performSegueWithIdentifier:@"PresentModalID" sender:self];
}

- (IBAction)pushButtonAction:(UIButton *)sender {
    [self performSegueWithIdentifier:@"ShowDetailID" sender:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIStoryboard * mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
