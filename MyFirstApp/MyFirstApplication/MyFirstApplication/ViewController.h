//
//  ViewController.h
//  MyFirstApplication
//
//  Created by Akshay Ramesh on 2/25/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

- (IBAction)buttonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

