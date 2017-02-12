//
//  objc_looping.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 12/16/16.
//  Copyright © 2016 fatsjohonimahnn. All rights reserved.
//

#import <Foundation/Foundation.h>

// The while loop continues looping while the expression is true.

/* while loop structure:

while ( conditional_expression){
    // run
    // multiple
    // lines
    // of code
}
*/

int whileLoop() {
    
    int counter = 0;
    
    while ( counter < 1 ) {
        printf("Good morning\n");
        printf("Good afternoon\n");
        printf("Good evening\n");
        counter = counter + 1;
    }
    
    return 0;
    // prints the statements once
}

//------------------------------------------------------------------------------


// The for loop

/*  For loop structure
 
 for (initialization; condition; increment) {
      statements
 }
 
 */

int forLoop(){
    
    for ( int counter = 0; counter < 10 ; counter = counter + 1 ){
        printf("Good morning\n");
        printf("Good afternoon\n");
        printf("Good evening\n");

    }
        
    return 0;
}

// another for loop

/*
void anotherForLoop() {
 
    for (Class *oneObject in anArray) {
        [oneObject methodCall];
    }
}
 
 // 
*/


//------------------------------------------------------------------------------



// The do-while loop

// similar to the while loop except it ALWAYS runs at least once (while loops might not execute if condition is false)


// a while loop that doesn't execute:

//int A = 0;
//int B = 1;

//void neverExecutingWhileLoop() {
//    
//    while ( A == B ){
//        printf("A != B");
//    }
//}
//
//// a do-while loop executes the do first and will continue as long as the while loop is true
//
///* do-while loop structure:
// 
// do{
//    // Multiple
//    // lines
//    // of code
// } while ( conditional_expression );
//
//*/
//
//
//
////------------------------------------------------------------------------------
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
