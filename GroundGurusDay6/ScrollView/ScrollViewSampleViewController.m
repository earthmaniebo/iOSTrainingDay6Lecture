//
//  ScrollViewSampleViewController.m
//  GroundGurusDay6
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "ScrollViewSampleViewController.h"

@interface ScrollViewSampleViewController ()

@end

@implementation ScrollViewSampleViewController

- (IBAction)didTapBack:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
