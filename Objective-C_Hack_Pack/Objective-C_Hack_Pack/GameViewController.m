//
//  ViewController.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 12/16/16.
//  Copyright © 2016 fatsjohonimahnn. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad { // gets called after the view has loaded and is ready to be displayed
    [super viewDidLoad];
    // https://developer.apple.com/library/ios/#documentation/uikit/reference/UILabel_Class/Reference/UILabel.html
    // https://developer.apple.com/library/IOs/#documentation/UIKit/Reference/UIButton_Class/UIButton/UIButton.html
    
    [self setupGame];
}


- (void)didReceiveMemoryWarning { // this method gets called when the device is running low on memory
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// add the implementation for the buttonPressed method
// scoreLabel var is the outlet connected to UILabel in SB
- (IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    // when the button is pressed, the scoreLabel text should update
    //"Score" is just the word
    // "\n" a line break
    // %i is a placeholder for an int, in this case, the count var
}

- (void)setupGame {
    
    seconds = 30;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
    // set up an NSTimer object that will send you a message every second
    // timeInterval: how often you want the timer to go off
    // target: which instance to send a message to.
    // we are in the GameViewController now and want the message to go to the GameViewController so target is self
    // selector: what method you want to call, needs @selector(method name)
    // userInfo: extra info you want stored with the timer
    // repeats: should timer repeat or just fire once? we want it to go off every second until we say stop, so YES
}

- (void)subtractTime {
    
    seconds--; // decrement the seconds
    
    timerLabel.text = [NSString stringWithFormat: @"Time: %i", seconds]; // update the label on screen
    
    if (seconds == 0) { // when seconds hits 0, timer will stop
        [timer invalidate]; // invalidate will stop the timer from calling subtractTime again
        
        // create an alert
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"Your score was %i", count] preferredStyle:UIAlertControllerStyleAlert];
        // add a button aka "action" to the alert
        // handler: hands-off control to the GameViewController, add a bloc to the handler
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Play Again" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self setupGame];
        }];
        // link the alert and the action together
        [alert addAction:defaultAction];
        
        // show the alert on the screen
        [self presentViewController:alert animated:YES completion:nil];
    }
}

@end


// delegates are a way for an object to find out about things that are happening
// if I set my alarm clock to ring at 7 am , I am the delegate (I am being told) and the alarm clock is the thing that will tell me something





























