//
//  objc_functions.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 2/9/17.
//  Copyright © 2017 fatsjohonimahnn. All rights reserved.
//

// import statements are used to add code from different files, tells the compiler:
// "when compiling this app, also use the code from this file"
// allows us to pick the features we require
// features are bundled into frameworks (like Foundation)
#import <Foundation/Foundation.h>


// make up of a function

// all the code in an app that provides some type of processing or logic is encapsulated into functions

/*
 main is the name of the func, if this was a terminal app, main would be the func that "kicks off" the whole app
 int is the return value (an integer) of main
 everything in the (parenthesis) are the arguments or inputs of the func
 
 obj-c is a procedural language, programs start at the top and execute each line in order
*/

int aMainFunc(int argc, const char * argv[]) {

    @autoreleasepool { // autorelease pools are used to manage memory,
        // every object consumes some amount of memory, insteap of tracking all the objects consuming memory and freeing them when done, autoreleasepool automates this task for you
        // ARC - automatic reference counting, is another tool that helps manage memory
        
        // an int variable named "num" with a value of 400
        // semicolons; indicate the end of a single line of code
        int num = 400;
        
        // perform mathematical operations like so:
        num = num + 100;
        
        // NSLog prints out the text to the console
        // text inside "quotation marks" is called a string and are prefixed with @ sign in obj-c
        // %i is a construct called a format specifier,
        // it uses placeholders in a string to show NSLog where to put the value of the variable
        NSLog(@"num equals %i", num); // prints num equals 400
        // if we had multiple ints we would keep using %i but add the new variable name like so:
        // NSLog(@"Two variables are %i and %i", num1, num2);
        // ints use %i, floats use %f, chars use %c and bools use %i where 1 == YES == True & 0 == NO == False
    }
    // return statements terminate the func
    // 0 is there because main needs to return an int also,
    // 0 is typical/standard return value for a func that completed without error
    return 0;
    // any code written here will not execute
}


// in iOS, the main func is in Supporting Files > main.m
// it contains this line:
    //return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));

// UIApplication servess as the central brain of our app
// command-line apps normally have more useful code in main.m



































