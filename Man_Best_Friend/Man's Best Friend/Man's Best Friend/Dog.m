//
//  Dog.m
//  Man's Best Friend
//
//  Created by Akshay Ramesh on 2/26/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)bark{
    
    NSLog(@"Woof Woof!");
}

- (void)changeBreedToWereWolf{

    self.breed = @"WereWolf";
}

- (void)barkNumberOfTimes:(int)numberOfTimes{
    
    for (int i=0; i<numberOfTimes; i++) {

        [self bark];
    }
}

- (void)barkNumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud{
    
    if(!isLoud){
        
        for (int i=0; i<numberOfTimes; i++) {

             NSLog(@"Yip Yip!");
        }
    }
    
    else{
        for (int i=0; i<numberOfTimes; i++) {

             NSLog(@"Roof Roof!");
        }
    }
}

- (int)ageInDogYears:(int)regularAge{
    
    int age = regularAge * 7;
    return age;
}
@end
