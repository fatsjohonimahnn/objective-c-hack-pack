//
//  Strings & Arrays.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 2/10/17.
//  Copyright © 2017 fatsjohonimahnn. All rights reserved.
//

#import <Foundation/Foundation.h>

// Obj-C is an object oriented language
// objects allow multiple properties aka values and its "type" is generally referred to as a class

int age = 40;
// age is a variable of type int
NSString *name = @"Mike";
// "name is an object of class NSString" or "an instance of class NSString"
// the * before the variable name is a pointer.
// whenever we create new objects, we need a pointer when declaring the variable's names
// "name is a pointer to an NSString"


// Strings

// strings store text
void createAString() {
    NSString *helloString = @"Hello Variable!";
    // declares a helloString variable which holds an object of class NSString
    NSLog(@"%@", helloString);
    // use %@ to print a string
}

// string objects can store more than simple static content:
void moreComplexString() {
    int x = 10;
    NSString *myString = [NSString stringWithFormat: @"The variable x stores the number %i", x];
    // we are telling the NSString class object called myString to perform an action by sending it a message inside []
    // inside [] is the message receiver: NSString, and stringWithFormat: message
    // a method is a task or block of code stored somewhere else that can execute to perform a specific task
    // method name stringWithFormat: everything following the colon is considered an argument to the method call
    // usually use the terminology "calling a method on an object" rather than "sending a message to an object"
    NSLog(@"%@", myString);
}


// C-String vs NSString

void cStringVsNSString() {
    
    char cstring[40]; // declaration of a var called cstring to hold 40 characters
    
    scanf("%s", cstring); // tell scanf to expect a list of characters by using the %s format specifier
    
    NSString *inputString = [NSString stringWithCString: cstring encoding:1];
    // create an NSString object from the list of characters that were read in
    // NSString *inputString creates an NSString object named inputString
// POINTERS:
    // * asterisk precedes the name of the object and turns the variable into a pointer
    // pointers store the memory location of the object, not the object itself, objects are ALWAYS declared as pointers
    // declaring an object pointer does not automatically create the object, which is different from primitive type variables
    // everything to the right of the equals sign is what creates the object
    // if you don't acutally create the object that the pointer references, the pointer will literally point to nothing
    // objects can take up a lot of memory, its more efficient and convenient to pass around the memory address to where the object is stored, otherwise you would be making huge in-memory copies of the object for everyone to use
    
    NSLog(@"You entered the word '%@' and it is %li characters long", inputString, [inputString length]);
    // this will print out the the word and bc inputString is an object, it can receive messages such as length
    // which cases it to report back the length of the string
}

// a C-String is a simple list of charcters, in the C language, the only way to store characters is by sticking them in a list
// NSString also stores a C-String but also provides other methods like get the string's length and compare it



// Arrays

/* a way of storing a bunch of objects in a list
 2 types in objc: NSArray & NSMutableArray

 NSArray is a basic static array that, once created, we cannot add nor remove items from it, IMMUTABLE
 
 NSMutableArray lets you add and remove items at any time

 NSMutableArray *people = [[NSMutableArray alloc] init];
 // this allocates and initializes a new NSMutableArray object called people
 
 [people addObject:newPerson];
 // addObject is a method of NSMutableArray that lets us add objects to the array
 
 Person *theFirstPerson = people[0];
 // this retrieves the first person in the array
*/


























