//
//  MainView.m
//  Project27
//
//  Created by Sotiris Ioannou on 11/26/15.
//  Copyright © 2015 Sotiris Ioannou. All rights reserved.
//

#import "MainView.h"
#import "Circle.h"

@implementation MainView

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    if ((self = [super initWithCoder:aDecoder])) {
        [self baseClassInit];
    }
    return self;
    
}

- (void) baseClassInit{
    
    NSLog(@"Init in progress");
    self.finishedCircles = [[NSMutableArray alloc]init];
    self.finishedSquares = [[NSMutableArray alloc]init];
    
    
}

- (void) drawRect:(CGRect)rect {

    
        
       // [self strokeCircle];
        
        for (Circle *c in self.finishedCircles){
            
            //self.circle = c;
            //[self strokeCircle];
            [self strokeCircle:c];
        
        }
        
        
        for (Square *s in self.finishedSquares){
            
            [self strokeSquare:s];
        }
        
    
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"Touches began");
    
    UITouch *t = [touches anyObject];
    
    CGPoint location = [t locationInView:self];
    
    [self.delegate mainViewIsTouched:location];
    
    

}
    //NSLog(@"%f", location.x);


- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    
}

- (void) createCircle:(CGPoint) location{
    
    Circle *circle = [[Circle alloc]init];
    circle.location = location;
    //self.circle.location = self.location;
    
    //self.circle.location = location;
    [self.finishedCircles addObject:circle];
    
    
    
}

- (void) createSquare:(CGPoint) location{
    
    Square *square = [[Square alloc]init];
    square.location = location;
    [self.finishedSquares addObject:square];
    
    
    
}

-(void) strokeCircle:(Circle *)circle{
    
    
    //NSLog(@"%f", location.x);
    
    //self.circle = [[Circle alloc]init];
    //self.circle.location = self.location;
    
    //[self.finishedCircles addObject:self.circle];
    
   // NSLog(@"%lu" , (unsigned long)[self.finishedCircles count]);

    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    [path addArcWithCenter:circle.location radius:20 startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    
    [path stroke];
    
   // [self setNeedsDisplay];
    
    
}

- (void)strokeSquare:(Square *)square{
    
    CGRect rectangle = CGRectMake(square.location.x, square.location.y, 10, 10);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rectangle];
    
    [path stroke];
    
  
}

@end
