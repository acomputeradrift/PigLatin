//
//  main.m
//  PigLatin
//
//  Created by Jamie on 2018-08-04.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "NSString+CategoryPigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        NSString *pigInputString = [inputHandler userInputForPrompt:@"Please enter the phrase to be piggy-fied:"];
        NSLog (@"%@",[pigInputString stringByPigLatinization]);
    }
    return 0;
}


