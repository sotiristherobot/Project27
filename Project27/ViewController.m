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
- (void) mainViewIsTouched:(CGPoint)location{
    
   // NSLog(@"Delegate method");
    
    //implement popover
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: nil
                                                                              message: nil
                                                                       preferredStyle: UIAlertControllerStyleActionSheet];
    
    [alertController addAction: [UIAlertAction actionWithTitle: @"Circle" style: UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    
        //NSLog(@"Circle");
        
        //NSLog(@"%f" , location.x);
        
        //[self.mainView strokeCircle:location];
        
        self.mainView.shapeToDraw = @"Circle";
        self.mainView.location = location;
        
        
        [self.mainView setNeedsDisplay];
        
      
    
    }]];
    
    [alertController addAction: [UIAlertAction actionWithTitle: @"Square" style: UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        NSLog(@"Square");
        
        //[self.mainView test];
        
    }]];
    
    alertController.modalPresentationStyle = UIModalPresentationPopover;
    
  
    [self presentViewController: alertController animated: YES completion: nil];
    
    
}


@end
