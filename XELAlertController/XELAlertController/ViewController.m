//
//  ViewController.m
//  XELAlertController
//
//  Created by Tronsis－mac on 17/3/30.
//  Copyright © 2017年 Kim－pc. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UIViewController+XELTransition.h"

#import "WeiBoShareViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)showSecondView:(id)sender {
    
    SecondViewController *secondVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Second"];
    [self xel_presentViewController:secondVC completion:NULL];
    secondVC.completion = ^ {
        WeiBoShareViewController *wbShare = [[WeiBoShareViewController alloc] init];
        [self xel_presentViewController:wbShare completion:NULL];
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
