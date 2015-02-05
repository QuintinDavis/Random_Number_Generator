//
//  ViewController.m
//  randomNumberGenerator
//
//  Created by Quintin Davis on 12/23/13.
//  Copyright (c) 2013 KAPQ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int randomNumber;
int randomTextNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self makeRandText:self];
    [self makeRandom:self];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeRandom:(id)sender {
    randomNumber = arc4random()%100+1;
    label.text = [[NSString alloc] initWithFormat:@"%d", randomNumber];
}

- (IBAction)makeRandText:(id)sender {
    NSString *textString;
    NSArray *textArray;
    textArray = [NSArray arrayWithObjects:
                  @"Hi!",
                  @"Hello",
                  @"Yo, yo, yo!",
                  @"What's going on?",
                  @"Hey",
                  @"What's up",
                  @"How's it going?",
                  nil];
    randomTextNumber = arc4random()%[textArray count];
    textString = [textArray objectAtIndex:randomTextNumber];
    textLabel.text = textString;
}
@end
