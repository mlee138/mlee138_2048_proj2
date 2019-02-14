//
//  ViewController.h
//  mlee138_2048
//
//  Created by Matthew Lee on 2/1/19.
//  Copyright © 2019 Matthew Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Board;
@property (strong, nonatomic) IBOutlet UILabel *Points;
/*@property (assign, nonatomic) NSArray* Row1;
@property (assign, nonatomic) NSArray* Row2;
@property (assign, nonatomic) NSArray* Row3;
@property (assign, nonatomic) NSArray* Row4;*/
@property (assign, nonatomic) NSArray* myArray;
@property (assign, nonatomic) NSInteger score;
- (IBAction)handleSwipe:(UIGestureRecognizer *)sender;
- (void)swipeUp;
- (void)swipeDown;
- (void)swipeLeft;
- (void)swipeRight;
- (void)addPoints;
- (void)insertNumber:(NSMutableArray*)arr;
- (IBAction)newGame:(id)sender;

@end

