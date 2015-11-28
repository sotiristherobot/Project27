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
    
    
}

- (void) drawRect:(CGRect)rect {

    
    if ( [self.shapeToDraw isEqualToString:@"Circle"]){
        
       // [self strokeCircle];
        
        for (Circle *c in self.finishedCircles){
            
        
            self.circle = c;
            [self strokeCircle];
        }
        
    }
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"Touches began");
    
    UITouch *t = [touches anyObject];
    
    CGPoint location = [t locationInView:self];
    
    [self.delegate mainViewIsTouched:location];
    
    self.circle = [[Circle alloc]init];
    //self.circle.location = self.location;
    self.circle.location = location;
    [self.finishedCircles addObject:self.circle];
}
    //NSLog(@"%f", location.x);

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    
}



-(void) strokeCircle{
    
    
    //NSLog(@"%f", location.x);
    
    //self.circle = [[Circle alloc]init];
    //self.circle.location = self.location;
    
    //[self.finishedCircles addObject:self.circle];
    
   // NSLog(@"%lu" , (unsigned long)[self.finishedCircles count]);

    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    [path addArcWithCenter:self.circle.location radius:20 startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    
    [path stroke];
    
   // [self setNeedsDisplay];
    
    
}

- (void)strokeSquare{
    
    
    NSLog(@"sqqq");
}

@end
