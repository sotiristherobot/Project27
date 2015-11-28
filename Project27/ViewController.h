//
//  ViewController.h
//  Project27
//
//  Created by Sotiris Ioannou on 11/26/15.
//  Copyright © 2015 Sotiris Ioannou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"

@interface ViewController : UIViewController <Touches>

- (void) mainViewIsTouched:(CGPoint)location;


@property (strong, nonatomic) IBOutlet MainView *mainView;
@end

