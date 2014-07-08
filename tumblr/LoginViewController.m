//
//  LoginViewController.m
//  tumblr
//
//  Created by Shali Nguyen on 7/6/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIView *signIn;
- (IBAction)onCancel:(id)sender;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.signIn.layer.cornerRadius = 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
