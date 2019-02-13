//
//  ViewController.h
//  mlee138_2048
//
//  Created by Matthew Lee on 2/1/19.
//  Copyright © 2019 Matthew Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Row1;
- (IBAction)handleSwipe:(UIGestureRecognizer *)sender;


@end

