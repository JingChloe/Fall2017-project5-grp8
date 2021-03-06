//
//  WebViewController.m
//  tf_camera_example
//
//  Created by laohuang on 2017/12/5.
//  Copyright © 2017年 Google. All rights reserved.
//

#import "WebViewController.h"


@interface WebViewController ()

@end

@implementation WebViewController
@synthesize connectorClass;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Web4Dog.delegate = self;
    
    NSString *newString = [connectorClass.StringBeingPassed stringByReplacingOccurrencesOfString:@" " withString:@"_"];

    NSString *stringURL_pre = @"https://en.wikipedia.org/wiki/";
    NSString *stringURL = [stringURL_pre stringByAppendingString:newString];
    NSURL *URL = [NSURL URLWithString:stringURL];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    [self.Web4Dog loadRequest:requestURL];
    
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidesWhenStopped = YES;
}
- (IBAction)Exit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
