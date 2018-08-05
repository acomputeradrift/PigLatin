//
//  NSString+CategoryPigLatin.m
//  PigLatin
//
//  Created by Jamie on 2018-08-04.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "NSString+CategoryPigLatin.h"

@implementation NSString (CategoryPigLatin)


-(NSString *)stringByPigLatinization{
//    //break string into words, add to array
   NSMutableArray *words=[[self componentsSeparatedByString:@" "] mutableCopy];
   NSCharacterSet *vowel = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    for (int i=0; i< [words count]; i++)
    {
        NSString *word = [words objectAtIndex:i];
        NSMutableString* wordForEdit = [[NSMutableString alloc] initWithString:word];
        NSRange range = [wordForEdit rangeOfCharacterFromSet:vowel];
        
        if (range.location == 0)
        {
            [wordForEdit appendString:@"yay"];
        }
        else{
            NSRange consonantRange = NSMakeRange(0, range.location);
            range.length = [wordForEdit length] - range.location;
            
            wordForEdit = [NSMutableString stringWithFormat:@"%@%@ay", [wordForEdit substringWithRange:range], [wordForEdit substringWithRange:consonantRange]];
        }
        [words replaceObjectAtIndex:i withObject:wordForEdit];
        
        //NSRange wordLength = [NSRange wordForEdit];
       // NSMutableArray *letters=[[wordForEdit componentsSeparatedByString:@""] mutableCopy];
       // NSString *lettersForEdit = letters[0];
       // NSLog(@"%@", lettersForEdit);
        //NSRange range = NSMakeRange (0, 1);
       // NSLog(@"%@", NSStringFromRange(wordForEdit));
//    //break each word into char
//    //grab the first char of each word and add it to the end with ay append
//    //print string
    }
    return [words componentsJoinedByString:@" "];
}


@end

