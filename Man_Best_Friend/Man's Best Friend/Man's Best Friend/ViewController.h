//
//  ViewController.h
//  Man's Best Friend
//
//  Created by Akshay Ramesh on 2/26/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;

@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

@end

