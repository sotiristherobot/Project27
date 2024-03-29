//
//  MainView.h
//  Project27
//
//  Created by Sotiris Ioannou on 11/26/15.
//  Copyright © 2015 Sotiris Ioannou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Circle.h"
#import "Square.h"

@protocol Touches <NSObject>

- (void) mainViewIsTouched:(CGPoint) location;

@end

@interface MainView : UIView

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;

- (void) strokeCircle:(Circle *)circle;

- (void) createCircle:(CGPoint) location;

- (void) strokeSquare:(Square *)square;

- (void) createSquare:(CGPoint) location;


//delegate to view controller
@property(nonatomic,weak) id <Touches> delegate;
@property(nonatomic,weak) NSString *shapeToDraw;

//@property(nonatomic,strong) Circle *circle;
@property(nonatomic,strong) NSMutableArray *finishedCircles;
@property(nonatomic,strong) NSMutableArray *finishedSquares;
//@property(nonatomic) CGPoint location;

@end
