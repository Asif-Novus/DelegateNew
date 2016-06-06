//
//  ViewController.m
//  0
//
//  Created by UsFromMini on 4/11/16.
//  Copyright © 2016 Jamil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Hello";
    
    NSLog(@"Loading");
    
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    [btn setImage:[UIImage imageNamed:@"darjelling.jpg"] forState:UIControlStateNormal ];
    [btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    [btn setCenter:CGPointMake(self.view.frame.size.width / 2,  200)];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview: btn];
   
    int i,j,k,n=5;

//    for(i=1;i<=5;i++){
//        
//        for(j=i;j<5;j++){
//            
//            printf(" ");
//            
//        }
//        
//        for(k=1;k<(i*2);k++){
//            
//            printf("*");
//            
//        }
//        
//        NSLog(@"\n");
//    }
//    
    
    for(i=1; i<=5;i++){
        
        for(j=i; j<5;j++){
            
            printf(" ");
        }
        
        for(k=1; k<(i*2);k++){
            
            printf("*");
        }
        
        printf("\n");
    }
    
    
     
//     for(i=1;i<=5;i++)
//     {
//     for(j=i;j<5;j++)
//     {
//     printf(" ");
//     }
//     for(k=1;k<(i*2);k++)
//     {
//     printf("*");
//     }
//     printf("\n");
//     }
    
     
     
     
    
}
-(void)btnPressed{
    
    NewViewController* newViewController = [[NewViewController alloc]init];
    newViewController.delegate = self;
    [self.navigationController pushViewController:newViewController animated:NO];
}

- (void) newViewControllerDelegateMethod:(NewViewController *)sender withString:(NSString *)receivedString {
    
    NSLog(@"Delegates are great! %@",receivedString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
