//
//  MainView.m
//  Project27
//
//  Created by Sotiris Ioannou on 11/26/15.
//  Copyright © 2015 Sotiris Ioannou. All rights reserved.
//

#import "MainView.h"

@implementation MainView


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"Touches began");
    
    [self.delegate mainViewIsTouched];
    
    
    
}

@end
