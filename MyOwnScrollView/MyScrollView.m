//
//  MyScrollView.m
//  MyOwnScrollView
//
//  Created by Nathan Wainwright on 2018-08-13.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

//Now, lets build a ScrollView.
//Add a class called MyScrollView which inherits from UIView
//
//You need to add two things to your custom UIView
//
//A CGSize property called contentSize
//A PanGestureRecognizer
//In the method that handles events from the PanGestureRecognizer, look for how far your have panned. Then, move (translate) the view's frame, but do not permit values that would violate contentSize.
//
//Refactor your code so that the boxes are added as subviews to MyScrollView and set the contentSize.
//
//Note: We implemented the basics of UIScrollView but there is a lot more to the real UIScrollView than just this. Momentum scrolling, bouncing, scroll indicators, zooming, and delegate methods are just some of the features we have not implemented here.

// need to add custom init to 'turn on' the pangesture

- (instancetype)init
{
    self = [super init];
    if (self) {
        // init pan gesture here.
        
        
    }
    return self;
}


- (void)frameViewPanned:(UIPanGestureRecognizer *)sender {
    
    CGPoint translationInView = [sender translationInView:sender.view];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    sender.view.center = newCenter;
//    [sender setTranslation:CGPointZero inView:sender.view];
//    
//    sender.view.backgroundColor = color;
    
}





/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
