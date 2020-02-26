//
//  ViewController.m
//  Age of Laika
//
//  Created by Akshay Ramesh on 2/26/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)convertToDogYearsButton:(id)sender {
    
    int humanYears = [self.humanYearsTextField.text intValue];
    int dogYearsCalculation = humanYears * 7;
    
    self.dogYearsLabel.text = [NSString stringWithFormat:@"%d",dogYearsCalculation];

}
@end
