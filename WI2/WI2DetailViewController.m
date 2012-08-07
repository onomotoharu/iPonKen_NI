//
//  WI2DetailViewController.m
//  WI2
//
//  Created by 小野 元春 on 2012/08/07.
//  Copyright (c) 2012年 小野 元春. All rights reserved.
//

#import "WI2DetailViewController.h"

@interface WI2DetailViewController ()
- (void)configureView;
@end

@implementation WI2DetailViewController

#pragma mark - Managing the detail item
@synthesize webView;

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem =    [newDetailItem stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //群馬天気-> %e7%be%a4%e9%a6%ac%20%e5%a4%a9%e6%b0%97
    
    
    NSString *URL = [[NSString alloc] initWithFormat:@"https://www.google.co.jp/#hl=ja&q=%@+%%E5%%A4%%A9%%E6%%B0%%97",self.detailItem];
    
    //https://www.google.co.jp/#hl=ja&q=%E7%BE%A4%E9%A6%AC+%E5%A4%A9%E6%B0%97
    
    
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URL]]];
    
    
    [self configureView];
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
