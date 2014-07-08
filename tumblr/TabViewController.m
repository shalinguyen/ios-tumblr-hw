//
//  TabViewController.m
//  tumblr
//
//  Created by Shali Nguyen on 7/6/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

#import "TabViewController.h"
#import "MainViewController.h"
#import "SearchViewController.h"
#import "AccountViewController.h"
#import "ComposeViewController.h"
#import "TrendingViewController.h"

@interface TabViewController ()

@property (nonatomic, strong) MainViewController *mainViewController;
@property (nonatomic, strong) AccountViewController *accountViewController;
@property (nonatomic, strong) SearchViewController *searchViewController;
@property (nonatomic, strong) ComposeViewController *composeViewController;
@property (nonatomic, strong) TrendingViewController *trendingViewController;

- (IBAction)onBtnHome:(id)sender;
- (IBAction)onBtnSearch:(id)sender;
- (IBAction)onBtnCompose:(id)sender;
- (IBAction)onBtnAccount:(id)sender;
- (IBAction)onBtnTrending:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *ContentView;
@property (weak, nonatomic) IBOutlet UIView *NavigationView;

@end

@implementation TabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.accountViewController = [[AccountViewController alloc] init];
        self.mainViewController = [[MainViewController alloc] init];
        self.searchViewController = [[SearchViewController alloc] init];
        self.trendingViewController = [[TrendingViewController alloc] init];
        self.composeViewController = [[ComposeViewController alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.mainViewController.view.frame = self.ContentView.frame;
    [self.ContentView addSubview:self.mainViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBtnHome:(id)sender {
    self.mainViewController.view.frame = self.ContentView.frame;
    [self.ContentView addSubview:self.mainViewController.view];
    
}

- (IBAction)onBtnSearch:(id)sender {
    self.searchViewController.view.frame = self.ContentView.frame;
    [self.ContentView addSubview:self.searchViewController.view];
}

- (IBAction)onBtnCompose:(id)sender {
    UIViewController *vc = [[ComposeViewController alloc] init];
    
    [self presentViewController:vc animated:YES completion:nil];
    
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)onBtnAccount:(id)sender {
    self.accountViewController.view.frame = self.ContentView.frame;
    [self.ContentView addSubview:self.accountViewController.view];
}

- (IBAction)onBtnTrending:(id)sender {
    self.trendingViewController.view.frame = self.ContentView.frame;
    [self.ContentView addSubview:self.trendingViewController.view];

}
@end
