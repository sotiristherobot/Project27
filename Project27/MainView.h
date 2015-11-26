//
//  MainView.h
//  Project27
//
//  Created by Sotiris Ioannou on 11/26/15.
//  Copyright © 2015 Sotiris Ioannou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Touches <NSObject>

- (void) mainViewIsTouched;

@end

@interface MainView : UIView


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;


//delegate to view controller
@property(nonatomic,weak) id <Touches> delegate;


@end
