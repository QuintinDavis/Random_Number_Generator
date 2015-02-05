//
//  ViewController.h
//  randomNumberGenerator
//
//  Created by Quintin Davis on 12/23/13.
//  Copyright (c) 2013 KAPQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *label;
    IBOutlet UILabel *textLabel;
}
- (IBAction)makeRandom:(id)sender;
- (IBAction)makeRandText:(id)sender;

@end
