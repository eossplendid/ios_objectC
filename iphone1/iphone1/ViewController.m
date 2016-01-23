//
//  ViewController.m
//  iphone1
//
//  Created by 郝鹏 on 16/1/1.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "ViewController.h"
#import "Caculator.h"

@interface ViewController ()

@end

@implementation ViewController
{
    char    op;
    int     currentNumber;
    BOOL    firstOperand, isNumerator;
    Calculator  *myCalculator;
    NSMutableString *displayString;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) processDigit:(int) digit;
-(void) processOp:(char) theOp;
-(void) storeFracPart;

-(IBAction) clickDigit: (UIButton *) sender;

-(IBAction)clickMinus;
-(IBAction)clickMultiply;
-(IBAction)clickPlus;
-(IBAction)clickDivide;

-(IBAction)clickOver;
-(IBAction)clickEquals;
-(IBAction)clickClear;


@end
