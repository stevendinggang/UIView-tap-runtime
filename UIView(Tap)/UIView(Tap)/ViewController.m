//
//  ViewController.m
//  UIView(Tap)
//
//  Created by 开心粮票 on 2017/10/23.
//  Copyright © 2017年 eeee. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TapBlock.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@property (weak, nonatomic) IBOutlet UIView *redview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView.userInteractionEnabled=YES;
    [self.imageView dg_Tapped:^{
        NSLog(@"点击了图片");
    }];
    
    self.label.userInteractionEnabled=YES;

    [self.label dg_Tapped:^{
        NSLog(@"点击了label");
    }];
    
    [self.textFiled dg_Tapped:^{
        NSLog(@"点击了textFiled");
    }];
    
    [self.redview dg_Tapped:^{
        NSLog(@"点击了图片");
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
