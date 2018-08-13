//
//  ViewController.m
//  MyOwnScrollView
//
//  Created by Nathan Wainwright on 2018-08-13.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIView *framingView;

@property (nonatomic, weak) UIView *redBox;
@property (nonatomic, weak) UIView *greenBox;
@property (nonatomic, weak) UIView *blueBox;
@property (nonatomic, weak) UIView *yellowBox;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *framingView = [[UIView alloc] initWithFrame:CGRectZero];
    framingView.translatesAutoresizingMaskIntoConstraints = NO;
    framingView.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:framingView];
    self.framingView = framingView;
    
//  A red UIView at (20,20) x, y coordinates and with width 100 and height 100
    UIView *redBox = [[UIView alloc] initWithFrame:CGRectZero];
    redBox.translatesAutoresizingMaskIntoConstraints = NO;
    redBox.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:redBox];
    
    //HEIGHT
    [NSLayoutConstraint constraintWithItem:redBox
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:100].active = YES;
    
    //WIDTH
    [NSLayoutConstraint constraintWithItem:redBox
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:100].active = YES;
    
    //RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:redBox
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:super.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:20].active = YES;
    
    //TOP EDGE
    [NSLayoutConstraint constraintWithItem:redBox
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:super.view
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:20].active = YES;
    
    //    A green UIView at (150,150) x, y coordinates and with width 150 and height 200
    
    UIView *greenBox = [[UIView alloc] initWithFrame:CGRectZero];
    greenBox.translatesAutoresizingMaskIntoConstraints = NO;
    greenBox.backgroundColor = [UIColor greenColor];
    [self.view addSubview:redBox];
    
    //HEIGHT
    [NSLayoutConstraint constraintWithItem:greenBox
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:150].active = YES;
    
    //WIDTH
    [NSLayoutConstraint constraintWithItem:greenBox
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:200].active = YES;
    
    //RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:greenBox
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:framingView
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:150].active = YES;
    
    //TOP EDGE
    [NSLayoutConstraint constraintWithItem:greenBox
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:framingView
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:150].active = YES;
    
    
    //    A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
    
    UIView *blueBox = [[UIView alloc] initWithFrame:CGRectZero];
    blueBox.translatesAutoresizingMaskIntoConstraints = NO;
    blueBox.backgroundColor = [UIColor blueColor];
    [self.view addSubview:redBox];
    
    //HEIGHT
    [NSLayoutConstraint constraintWithItem:blueBox
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:40].active = YES;
    
    //WIDTH
    [NSLayoutConstraint constraintWithItem:blueBox
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:400].active = YES;
    
    //RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:blueBox
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:framingView
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:200].active = YES;
    
    //TOP EDGE
    [NSLayoutConstraint constraintWithItem:blueBox
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:framingView
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:150].active = YES;
    
    
    
    //    A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
    
    UIView *yellowBox = [[UIView alloc] initWithFrame:CGRectZero];
    yellowBox.translatesAutoresizingMaskIntoConstraints = NO;
    yellowBox.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowBox];
    
    //HEIGHT
    [NSLayoutConstraint constraintWithItem:yellowBox
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:100].active = YES;
    
    //WIDTH
    [NSLayoutConstraint constraintWithItem:yellowBox
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:600].active = YES;
    
    //RIGHT EDGE
    [NSLayoutConstraint constraintWithItem:yellowBox
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:framingView
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:180].active = YES;
    
    //TOP EDGE
    [NSLayoutConstraint constraintWithItem:yellowBox
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:framingView
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:150].active = YES;
    
    
    
    
    
    
    
    
    
}

- (void)viewDidAppear{
    
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    
//    self.view.frame = CGRectMake(0, 44, 320, 416);
//    [super viewWillAppear:animated];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
