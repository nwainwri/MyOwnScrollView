//
//  MyScrollView.m
//  MyOwnScrollView
//
//  Created by Nathan Wainwright on 2018-08-13.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()

- (void)frameViewPanned:(UIPanGestureRecognizer *)sender;

@end

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

- (instancetype)initWithFrame:(CGRect)frame {// passes in UIView -- current frame -- for reference; so that it inits that frame with the gesture method called
    self = [super initWithFrame:frame];
    if (self) {
        // init pan gesture here
        self.scrollyScroll = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(frameViewPanned:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer: self.scrollyScroll];
    }
    return self;
}

- (void)frameViewPanned:(UIPanGestureRecognizer *)sender {
    
    CGPoint translationInView = [sender translationInView:self];
    CGRect bounds = self.bounds; //grabs frameview size (height and width)
    
    CGFloat newX = bounds.origin.x - translationInView.x;
    CGFloat minX = 0;
    CGFloat maxX = self.contentSize.width - bounds.size.width;
    CGFloat safeNewX = fmax(minX, fmin(newX, maxX));
    
    CGFloat newY = bounds.origin.y - translationInView.y;
    CGFloat minY = 0;
    CGFloat maxY = self.contentSize.height - bounds.size.height;
    CGFloat safeNewY = fmax(minY, fmin(newY, maxY));
    
    
    self.bounds = CGRectMake(safeNewX, safeNewY, self.bounds.size.width, self.bounds.size.height);
    
    [sender setTranslation:CGPointZero inView:self];
    
//    Working Scroll/Pan
//    CGPoint translationInView = [sender translationInView:sender.view];
//    CGPoint newCenter = CGPointMake(self.center.x + translationInView.x, self.center.y + translationInView.y);
//    self.center = newCenter;
//    [sender setTranslation:CGPointZero inView:self];
    
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
