//
//  ViewController.m
//  mlee138_2048
//
//  Created by Matthew Lee on 2/1/19.
//  Copyright © 2019 Matthew Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize Board,Points;
//@synthesize Row1, Row2, Row3, Row4;
@synthesize myArray;
@synthesize score;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)newGame:(id)sender {
    myArray = @[
                @[ @0, @2, @0, @0],
                @[ @2, @0, @0, @0],
                @[ @0, @0, @0, @0],
                @[ @0, @0, @0, @0],
                ];
    [self viewArrays];
}


- (void)swipeUp {
    NSLog(@"swiped Up");
    

    [self addPoints];
    
}

- (void)swipeDown {
    NSLog(@"swiped Down");
    [self addPoints];
}
- (void)swipeLeft {
    NSLog(@"swiped Left");
    [self addPoints];
}

- (void)swipeRight {
    NSLog(@"swiped Right");
    [self addPoints];
}

- (void)addPoints {
    score++;
    NSString *temp = [NSString stringWithFormat:@"%ld", (long)score];
    [Points setText:temp];
}

- (void)insertNumber:(NSMutableArray*)arr{
    
}

- (void)viewArrays{
    NSString *str = [myArray componentsJoinedByString:@", "];
    NSLog(@"%@",str);
    //[Board setText:str];
    
    /*NSLog(@"%@", Row1);
    NSLog(@"%@", Row2);
    NSLog(@"%@", Row3);
    NSLog(@"%@", Row4);*/
}


- (IBAction)handleSwipe:(UIGestureRecognizer *)sender {
    
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionUp:
            //[Row1 setText:@"swiped UP"];
            [self swipeUp];
            break;
        case UISwipeGestureRecognizerDirectionDown:
            //[Row1 setText:@"swiped Down"];
            [self swipeDown];
            break;
        case UISwipeGestureRecognizerDirectionLeft:
            //[Row1 setText:@"swiped Left"];
            [self swipeLeft];
            break;
        case UISwipeGestureRecognizerDirectionRight:
            //[Row1 setText:@"swiped Right"];
            [self swipeRight];
            break;
        default:
            break;
    }
    
}
@end
