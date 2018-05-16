//
//  ViewController.m
//  SampleApp
//
//  Created by Daniel Granahan on 12/4/17.
//  Copyright © 2017 Placed. All rights reserved.
//

#import "ViewController.h"
#import "SampleAlertViewController.h"
#import <Placed/PlacedAgent.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)registerUser:(id)sender {
    // "Register User" button clicked
    if ([NSUserDefaults.standardUserDefaults boolForKey:kTermsAndPolicyAcceptedKey]) {
        [PlacedAgent registerUser];
    } else {
        [self presentViewController:[SampleAlertViewController new] animated:YES completion:nil];
    }
}

@end
