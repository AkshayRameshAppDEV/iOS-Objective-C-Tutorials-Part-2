//
//  ViewController.m
//  MyFirstApplication
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


- (IBAction)buttonPressed:(id)sender {
    
    self.titleLabel.text = self.textField.text;
    [self.textField resignFirstResponder];
}

@end
