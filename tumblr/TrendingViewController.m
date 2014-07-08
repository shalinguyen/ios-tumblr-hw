//
//  TrendingViewController.m
//  tumblr
//
//  Created by Shali Nguyen on 7/6/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

#import "TrendingViewController.h"

@interface TrendingViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *trendingFeed;

@end

@implementation TrendingViewController

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
    
    [self.scrollView layoutIfNeeded];
    self.scrollView.contentSize = self.trendingFeed.bounds.size;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
