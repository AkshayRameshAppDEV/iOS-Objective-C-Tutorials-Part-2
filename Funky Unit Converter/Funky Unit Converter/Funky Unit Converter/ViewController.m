//
//  ViewController.m
//  Funky Unit Converter
//
//  Created by Akshay Ramesh on 2/25/20.
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


- (IBAction)convertUnits:(id)sender {
    
    float numberOfBills = [self.numberOfBillsTextField.text floatValue];
    float calculateNumberOfFootballFields = numberOfBills / 91440;
    
    self.numberOfBillsLabel.text = [NSString stringWithFormat:@"%f",calculateNumberOfFootballFields];
}
@end
