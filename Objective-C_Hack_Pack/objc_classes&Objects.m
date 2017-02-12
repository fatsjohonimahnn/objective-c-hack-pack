//
//  objc_classes&Objects.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 2/11/17.
//  Copyright © 2017 fatsjohonimahnn. All rights reserved.
//


// .m is the implementation file where the source code for the class lives


#import "objc_classes&Objects.h"
// imports the class declarations from the header file, similar to how we imported the Foundation classes in the header file

@implementation objc_classes_Objects
// indicates the start of the implementation block


- (void)enterInfo {
    NSLog(@"What is the first name?");
    char cstring[40];
    scanf("%s", cstring);
    
    firstName = [NSString stringWithCString:cstring encoding:1];
    // stores the info into the firstName instance variable
    
    NSLog(@"What is %@'s last name?", firstName);
    scanf("%s", cstring);
    lastName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"How old is %@ %@?", firstName, lastName);
    scanf("%i", &age);
}

- (void)printInfo {
    NSLog(@"%@ %@ is %i years old", firstName, lastName, age);
}

@end
// indicates the end of the implementatin block



// we can call this class from another file using the #import "objc_classes&Objects.h"
// this tells the other file about the existence of the new class

// we could implement the class within the new file like so:
/*
 
@autoreleasepool {
 
 char response; // can hold a char
 
 do {  // create a do-while loop which checks the conditionat the end of the loop instead of a regular while loop that checks the condition at the beginning, code in the do{} will always execute at least once
 
    objc_classes_Objects *newobjc_classes_Objects = [[objc_classes_Objects alloc] init];
    // this creates the new objc_classes_Objects object
    // alloc allocates memory for the object
    // init creates and initializes the object that will live at that memory address
 
    [newobjc_classes_Objects enterInfo];
    [newobjc_classes_Objects printInfo];
    // these send messages that call the methods
 
    NSLog(@"Do you want to enter another name? (y/n)");
    scanf("\n%c", &response); 
        // \n stands for newline or the character that is printed when you hit the Enter key (not visisble) but scanf will see it when it parses the user's input
        // \n%c is a special format specifier that tells scanf to read in a character discarding newlines and other whitespace characters such as a space or tab.
 
 } while(response == 'y');
 // checks if response is equal to the character ‘y’; if so, it loops back around. Note that the while condition has a semicolon after it; this is the only type of loop that requires a semicolon.
}

*/





















