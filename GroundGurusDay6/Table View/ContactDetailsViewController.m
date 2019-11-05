//
//  ContactDetailsViewController.m
//  GroundGurusDay6
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "ContactDetailsViewController.h"

@interface ContactDetailsViewController ()

@end


@implementation ContactDetailsViewController

- (IBAction)didTapClose:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameLabel.text = _contactName;
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
