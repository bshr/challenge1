//
//  RNCViewController.m
//  challenge1
//
//  Created by Lukasz on 21/06/14.
//  Copyright (c) 2014 runic.pl. All rights reserved.
//

#import "RNCViewController.h"

@interface RNCViewController ()

@end

@implementation RNCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    webView.delegate = self;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"file:///tmp/challenge1.html"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)webViewDidFinishLoad:(UIWebView *)lWebView
{
    /*
    NSLog(@"mainDocumentURL.host: %@\n", lWebView.request.mainDocumentURL.host);
    NSLog(@"location.host: %@\n", [lWebView stringByEvaluatingJavaScriptFromString:@"location.host"]);
    NSLog(@"document.forms[0].id: %@\n", [lWebView stringByEvaluatingJavaScriptFromString:@"document.forms[0].id"]);
     */
    if([lWebView.request.mainDocumentURL.host isEqualToString:@"example.com"] && [[lWebView stringByEvaluatingJavaScriptFromString:@"location.host"] isEqualToString:@"example.com"] && [[lWebView stringByEvaluatingJavaScriptFromString:@"document.forms[0].id"] isEqualToString:@"challenge1"]) {
        NSLog(@"You completed the challenge!");
    }
}

@end
