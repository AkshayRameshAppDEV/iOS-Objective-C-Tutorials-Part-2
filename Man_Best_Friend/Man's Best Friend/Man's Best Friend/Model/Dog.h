//
//  Dog.h
//  Man's Best Friend
//
//  Created by Akshay Ramesh on 2/26/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject

@property (nonatomic) int age;
@property (strong, nonatomic) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void) bark;
-(void) barkNumberOfTimes: (int)numberOfTimes;
-(void) changeBreedToWereWolf;
-(void) barkNumberOfTimes: (int)numberOfTimes loudly: (BOOL)isLoud;
-(int) ageInDogYears: (int) regularAge;

@end

NS_ASSUME_NONNULL_END
