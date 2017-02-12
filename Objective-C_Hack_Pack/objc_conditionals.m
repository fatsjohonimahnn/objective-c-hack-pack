//
//  objc_conditionals.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 12/16/16.
//  Copyright © 2016 fatsjohonimahnn. All rights reserved.
//

#import <Foundation/Foundation.h>

int A = 0;
int B = 1;
int C = 1;

// We can use if-statements to have our code take some action if some
// condition is true. The most basic control structure is the if-statement.

/* if-statement structure

if( conditional_expression ){
    // Do something when it's true
}
// if not true then just keep going and ignore it

*/

void ifStatement() {
    
    if(A < B) {
        
        printf("A < B");
    }
}

//------------------------------------------------------------------------------

// Next, the if-else statement allows us to pick one of two possible actions instead
// of a all-or-nothing choice.

/* if-else statement structure 
 
if( conditional_expression ){
    // Do something when it's true
}
else {
    // Do something else if it's false
}

*/

void ifElseStatement() {
    
    if ( A > B ) {
        printf("if this gets returned");
    } else {
        printf("else this gets returned");
    }
}

//------------------------------------------------------------------------------

// The final form of an if-statement, uses an else-if combination to pick from
// one of several possible actions by chaining two or more if statements
// together.


/*
 
if( conditional_expression ){
    // Do something when it's true
}
else if (another_conditional_expression ){
    // Do something if the first is not true and this one is
}
else {
    // Do something else if neither is true
}

*/

void elseIfStatement() {
    if ( A > B ) {
        printf(" if this gets returned");
    } else if (A < B) {
        printf("else if this gets returned");
    } else {
        printf("else this gets returned");
    }
}

// 0 = false
// 1 (or any number not 0) = true

// Comparisons evaluate to 1 or 0
// >, <, >=, <=, ==, !=

// If we want to write if-statements that check multiple expressions we can
// use Logical Operators to decided if an if-statement should be executed
// or not.

// Logical Operators

// Logical AND (a && b) - Returns true if both expressions are true
// Logical OR  (a || b) - Returns true if either of the two expressions are true
// Logical NOT (!a)     - Negates or inverts the expression's result.

// Ternary Operator

// shorthand way to compare and assign a value

bool ternaryOperator() {
    bool isAGreaterThanB = (A > B) ? 1 : 0;
    return isAGreaterThanB;
}

//------------------------------------------------------------------------------
 
 
//------------------------------------------------------------------------------
 

//------------------------------------------------------------------------------
