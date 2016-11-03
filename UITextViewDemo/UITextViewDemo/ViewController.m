//
//  ViewController.m
//  UITextViewDemo
//
//  Created by clarence on 16/11/3.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+Placeholder.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *SecondTextView;

@property (nonatomic,weak)UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // automaticallyAdjustsScrollViewInsets根据按所在界面的status bar，navigationbar，与tabbar的高度，自动调整scrollview的 inset,设置为no，不让viewController调整，否则SB或XIB拖出来的textView光标会显示在中间
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    // Do any additional setup after loading the view, typically from a nib.
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 200)];
    
    textView.fl_placeholder = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈";
    
    textView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:textView];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 500, 100, 30)];
    self.textField = textField;
    [self.view addSubview:textField];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    self.SecondTextView.fl_placeholderColor = [UIColor redColor];
    self.SecondTextView.fl_placeholderFont = [UIFont systemFontOfSize:18];
    self.SecondTextView.fl_placeholder = @"hello world";
    self.SecondTextView.fl_placeholder = @"hello worldssss";
    
    
    self.textField.placeholder = @"hello world";
    
}


@end
