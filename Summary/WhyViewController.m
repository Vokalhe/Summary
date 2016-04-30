//
//  WhyViewController.m
//  Summary
//
//  Created by Admin on 30.04.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "WhyViewController.h"

@interface WhyViewController ()

- (IBAction)buttonURL:(id)sender;

@end

@implementation WhyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonURL:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.dropbox.com/home?preview=Work.pdf"]];
}
@end
