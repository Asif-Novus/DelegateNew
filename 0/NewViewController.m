//
//  NewViewController.m
//  0
//
//  Created by UsFromMini on 4/11/16.
//  Copyright © 2016 Jamil. All rights reserved.
//

#import "NewViewController.h"
#include "ViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController
@synthesize delegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    [btn setImage:[UIImage imageNamed:@"darjelling.jpg"] forState:UIControlStateNormal ];
    [btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    [btn setCenter:CGPointMake(self.view.frame.size.width / 2,  200)];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview: btn];

}
-(void)btnPressed{
    
    [self.delegate newViewControllerDelegateMethod:self withString:@"Say Hey"];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
