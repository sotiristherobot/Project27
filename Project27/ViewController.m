//
//  ViewController.m
//  Project27
//
//  Created by Sotiris Ioannou on 11/26/15.
//  Copyright © 2015 Sotiris Ioannou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //set delegate to self
    self.mainView.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//delegate method
- (void) mainViewIsTouched{
    
    
    NSLog(@"Delegate method");
    
}


@end
