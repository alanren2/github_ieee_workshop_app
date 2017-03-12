//
//  ViewController.m
//  UInfo
//
//  Created by Arjun Nijhawan on 3/12/17.
//  Copyright © 2017 Arjun Nijhawan. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface ViewController () <FBSDKLoginButtonDelegate>

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    //create a login button
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    [loginButton setDelegate:self];
    [self.view addSubview:loginButton];
    
    if([FBSDKAccessToken currentAccessToken] != nil) {
        [self performSegueWithIdentifier: @"toTable" sender: nil];
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)
loginButton:	(FBSDKLoginButton *)loginButton
didCompleteWithResult:	(FBSDKLoginManagerLoginResult *)result
error:	(NSError *)error {
   // NSLog(@"lol");
    
    [self performSegueWithIdentifier: @"toTable" sender: nil];
    
}

-(void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton {
    NSLog(@"You are now logged out.");
}


@end
