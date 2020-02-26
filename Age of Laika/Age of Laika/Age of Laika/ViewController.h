//
//  ViewController.h
//  Age of Laika
//
//  Created by Akshay Ramesh on 2/26/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dogYearsLabel;
@property (strong, nonatomic) IBOutlet UITextField *humanYearsTextField;
- (IBAction)convertToDogYearsButton:(id)sender;

@end

