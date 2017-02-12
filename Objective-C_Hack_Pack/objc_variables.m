//
//  objc_variables.m
//  Objective-C_Hack_Pack
//
//  Created by Jonathon Fishman on 12/16/16.
//  Copyright © 2016 fatsjohonimahnn. All rights reserved.
//

#import <Foundation/Foundation.h>

// This is a one line comment

/*
 This is a multi line comment
 it ends when I close it
 */

//------------------------------------------------------------------------------


// Variables are a name we use for data
// Each variable has a "type" assigned to it's data ex: String, Integer, References/Pointers

// Primitive Types: inherited from C
// Examples: int, exact int, floating point, void

// int declares an Integer and is followed by the variable's name
int anInt = 42;



//------------------------------------------------------------------------------
// modifiers:

// unsigned int can only be 0 or positive
// enables the maximum size to be twice as long
unsigned int anUnsignedInt;

// short takes less space in memory
short int aShortInt;

// long makes the int value (already large) even longer
long int aLong;

// long long is the largest that the computer can represent
long long int aLongLong;
unsigned long long int anUnsignedLongLong;

// short <= int <= long <= long long



//------------------------------------------------------------------------------
// fixed width integers give us a guarantee about what the largest number we can represent
// looks like: intX_t where X can = 8, 16, 32, 64

// Exact Integer Types:
int8_t aOneByteInt = 127;
uint8_t aOneByteUnsignedInt = 255;
int16_t aTwoByteInt = 32767;
uint16_t aTwoByteUnsignedInt = 65535;
int32_t aFourByteInt = 2147483647;
uint32_t aFourByteUnsignedInt = 4294967295;
int64_t anEightByteInt = 9223372036854775807;
//uint64_t anEightByteUnsignedInt = 18446744073709551615;

// if our int has at least a certain number of bytes
// Minimum integer types
int_least8_t aTinyInt = 127;
uint_least8_t aTinyUnsignedInt = 255;
int_least16_t aMediumInt = 32767;
uint_least16_t aMediumUnsignedInt = 65535;
int_least32_t aNormalInt = 2147483647;
uint_least32_t aNormalUnsignedInt = 4294967295;
int_least64_t aBigInt = 9223372036854775807;
//uint_least64_t aBigUnsignedInt = 18446744073709551615;

// the max size out int can have:
// Maximum integer types
intmax_t theBiggestInt = 9223372036854775807;
//uintmax_t theBiggestUnsignedInt = 18446744073709551615;




//------------------------------------------------------------------------------
// Floating Point numbers: float, double, long double

// Single precision floating point
float aFloat = -3.14f;

// Double precision floating point
double aDouble = -3.14;

// Extended precision floating-point
long double aLongDouble = -3.14e8L;



//------------------------------------------------------------------------------
// Void
// represents no datatype and is used as a placeholder in different situations



//------------------------------------------------------------------------------

// example multiplication
int height_feet = 5;
int height_inches = 11;

double calcHeight() {
    double height_cm = (((height_feet *12.0) + height_inches) *2.54); // 1in = 2.54cm

    return height_cm;
}

//------------------------------------------------------------------------------
// Standard C operators:

int someInteger = 42;

int incrementSomeInteger() {
    someInteger++; // someInteger == 43
    
    return someInteger;
}

int decrementSomeInteger() {
    someInteger--; // someInteger == 42
    
    return someInteger;
}

int multiplySomeInteger() {
    someInteger *= 2; // someInteger == 84
    return someInteger;
}

//-------------------------------------------
// If you use a scalar type for an Objective-C property, like this:

@interface XYZCalculator : NSObject
@property double currentValue;
@end

// it’s also possible to use C operators on the property when accessing the value via dot syntax, like this:
@implementation XYZCalculator
- (void)increment {
    self.currentValue++;
}
- (void)decrement {
    self.currentValue--;
}
- (void)multiplyBy:(double)factor {
    self.currentValue *= factor;
}
    @end

//------------------------------------------------------------------------------
// char stores a single character
char a;


//------------------------------------------------------------------------------
// Strings represented by instances of NSString Class



//// If we want to build-up a String using some of our variables, we can use
//// string interpolation to include the name of a constant or variable
//// into another string.
//
//// To do this, wrap the var name in parentheses and escape it with a backslash
//// before the opening parenthesis.
////
//// Like this:   \(varName)
//
//var weapon = "Dagger"
//var price = 2
//
//print("Are you sure you want to purchase the \(weapon) for \(price) gold coins?")
//
//weapon = "Short Sword"
//price = 10
//
//print("Are you sure you want to purchase the '\(weapon)' for \(price) gold coins?")
//
//weapon = "Mystical Blade of Awesomeness"
//price = 1000
//
//print("Are you sure you want to purchase the \"\(weapon)\" for \(price) gold coins?")
//

