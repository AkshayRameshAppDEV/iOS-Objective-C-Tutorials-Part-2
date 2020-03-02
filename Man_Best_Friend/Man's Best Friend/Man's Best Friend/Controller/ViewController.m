//
//  ViewController.m
//  Man's Best Friend
//
//  Created by Akshay Ramesh on 2/26/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "Puppy.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.currentIndex = 0;
    Dog *myDog = [[Dog alloc] init];
    
    myDog.name = @"Nana";
    myDog.breed = @"Golden Retriever";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"doggy.jpg"];
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;

    
    Dog *secondDog = [[Dog alloc] init];
    secondDog.name = @"Pana";
    secondDog.breed = @"Silver";
    secondDog.age = 2;
    secondDog.image = [UIImage imageNamed:@"foggy.jpg"];
    
    Dog *thirdDog = [[Dog alloc] init];
    thirdDog.name = @"Kana";
    thirdDog.breed = @"Golden";
    thirdDog.age = 3;
    thirdDog.image = [UIImage imageNamed:@"joggy.jpg"];
    
    Dog *fourthDog = [[Dog alloc] init];
    fourthDog.name = @"Dana";
    fourthDog.breed = @"Ruby";
    fourthDog.age = 4;
    fourthDog.image = [UIImage imageNamed:@"poggy.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    NSLog(@"%@",self.myDogs);
    
    Puppy *myPuppy = [[Puppy alloc] init];
    [myPuppy givePuppyEyes];
    [myPuppy bark];
    

//    NSLog(@"My dog is named: %@ and breed %@ and %i age", myDog.name, myDog.breed, myDog.age);
//
//    [myDog bark];
//
//
//    NSLog(@"-------------------");
//
//    [myDog barkNumberOfTimes:2];
//
//    [myDog changeBreedToWereWolf];
//
//    NSLog(@"My dog is named: %@", myDog.breed);
//
//    [myDog barkNumberOfTimes:3 loudly:YES];
//     [myDog barkNumberOfTimes:2 loudly:NO];
//
//    NSLog(@"Age in dog years: %i", [myDog ageInDogYears:myDog.age]);


    
}


- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if(self.currentIndex == randomIndex && self.currentIndex == 3)
    {
        self.currentIndex = 0;
        randomIndex = 0;
    }
    else if(self.currentIndex == randomIndex)
    {
        randomIndex++;
        self.currentIndex = randomIndex;
    }
    else
    {
        self.currentIndex = randomIndex;
    }
    
    Dog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.nameLabel.text = randomDog.name;
//    self.breedLabel.text = randomDog.breed;
    
    [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        
            self.myImageView.image = randomDog.image;
            self.nameLabel.text = randomDog.name;
            self.breedLabel.text = randomDog.breed;
        
    } completion:^(BOOL finished) {
        
    }];
    
    sender.title = @"Another Dog";
}
@end
