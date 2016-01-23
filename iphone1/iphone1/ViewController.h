//
//  ViewController.h
//  iphone1
//
//  Created by 郝鹏 on 16/1/1.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;
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

