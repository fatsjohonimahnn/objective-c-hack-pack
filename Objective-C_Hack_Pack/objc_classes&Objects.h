//
//  objc_classes&Objects.h
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 2/11/17.
//  Copyright © 2017 fatsjohonimahnn. All rights reserved.
//

// .h file extension represents the header files
// a header file tells the rest of the program about the elements in your class e.g variables and methods

#import <Foundation/Foundation.h>
// imports the basic Foundation class which the app requires

@interface objc_classes_Objects : NSObject
// informs the rest of the program that we are making a class called: objc_classes_Objects
// the colon indicates we are creating a subclass from the NSObject parent class
// subclassing is a way to derive a new class based on an existing class using inheritence
// objc_classes_Objects inherits all the existing attributes of the superclass (NSObject) but can also define new attributes



// Working with Instance Variables and Methods

{ // curly braces surround the INSTANCE variables of the object
    NSString *firstName;
    NSString *lastName;
    int age;
    // each objc_classes_Objects object has its own distinct set of data
    // INSTANCE variables store the individual characteristics of each object
}
// Class variables are shared amongst all objects of a particular class


// Defining methods that our class provides
- (void)enterInfo; // set the class info
- (void)printInfo; // retrieve the class info

// this defines the methods that our class provides, we simply declare that they exist
// (void) indicates that these methods do NOT return anything to the caller
// the minus sign (-) indicates an INSTANCE method
// a plus sign (+) is for a CLASS method


@end
// indicates that we are done defining the class
