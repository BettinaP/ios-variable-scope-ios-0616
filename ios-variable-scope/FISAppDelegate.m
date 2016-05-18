//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

/*
 
 * Write your method definitions here.
 
 */
-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array
{
    NSMutableArray *mOriginalArray = [array mutableCopy];
    [mOriginalArray addObject:string];
    return mOriginalArray;
   
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array
{
    NSUInteger countUppercase = 0; //must be outside for loop so it can be returned and not be stuck in limited scope of loop
    
    for (NSUInteger i = 0; i < [array count]; i++)
    {
         NSString *uppercase = [array[i] uppercaseString];// new string as uppercase created to compare to original strings in array
        
        if ([array[i] isEqualToString:uppercase]) { //have to check if original strings in array are uppercase by comparing the NSString uppercase
            countUppercase++; //if they are (uppercase true), then increase count of how many of strings in array are uppercase
        }
    }
    return countUppercase;
        
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
  
}



@end
