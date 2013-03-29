//
//  ViewController.m
//  IndexOfObject-MakeRangeSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSArray *myArray = [NSArray arrayWithObjects:
                      @"Apple", @"Banana", @"Orange", nil];
  
  //検索範囲を指定して検索する
  NSInteger u = [myArray indexOfObject:@"Orange"
                               inRange:NSMakeRange(1, 2)];
  
  if (u == NSNotFound) {
    NSLog(@"Not Found");
  } else {
    NSLog(@"%lu", (unsigned long)u);
  }
}

@end
