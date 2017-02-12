//
//  ViewController.h
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 12/16/16.
//  Copyright © 2016 fatsjohonimahnn. All rights reserved.
//

#import <UIKit/UIKit.h>

// the header file is used to declare differenct parts of the program
// declaring means to say it exists but does not give implementation details

@interface GameViewController : UIViewController {
    
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    // outlets help user interface elements in the SB refer to a variable
    // scoreLabel and timerLabel are instance variables
    // UILabel is the class name
    
    int count;
    int seconds;
    NSTimer *timer;
}

- (IBAction)buttonPressed;
// declaration for a method called buttonPressed
// IBAction tells Xcode that the method will be connected to some action

@end

