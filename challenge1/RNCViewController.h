//
//  RNCViewController.h
//  challenge1
//
//  Created by Lukasz on 21/06/14.
//  Copyright (c) 2014 runic.pl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RNCViewController : UIViewController <UIWebViewDelegate>
{
    __weak IBOutlet UIWebView *webView;
}

@end
