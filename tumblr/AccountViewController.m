//
//  AccountViewController.m
//  tumblr
//
//  Created by Shali Nguyen on 7/6/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

#import "AccountViewController.h"
#import "LoginViewController.h"

@interface AccountViewController ()
- (IBAction)onLogin:(id)sender;

@end

@implementation AccountViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogin:(id)sender {
    UIViewController *vc = [[LoginViewController alloc] init];
    
    [self presentViewController:vc animated:YES completion:nil];
    
    [self.navigationController pushViewController:vc animated:YES];
}
@end
