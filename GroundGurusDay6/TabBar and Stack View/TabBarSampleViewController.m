//
//  TabBarSampleViewController.m
//  GroundGurusDay6
//
//  Created by Earth Maniebo on 04/09/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "TabBarSampleViewController.h"

@interface TabBarSampleViewController ()

@end

@implementation TabBarSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    UIImage *playIcon = [UIImage imageNamed:@"ic_play"];
    UIImage *favoriteIcon = [UIImage imageNamed:@"ic_favorite"];
    
    UIImage *resizedPlayIcon = [self imageWithImage:playIcon convertToSize:CGSizeMake(40.0, 40.0)];
    UIImage *resizedFavoriteIcon = [self imageWithImage:favoriteIcon convertToSize:CGSizeMake(40.0, 40.0)];
    
    
    [_firstTabBarItem setImage:[resizedPlayIcon imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [_secondTabBarItem setImage:[resizedFavoriteIcon imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    
    
    [_firstTabBarItem setSelectedImage:[resizedPlayIcon imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [_secondTabBarItem setSelectedImage:[resizedFavoriteIcon imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [_firstTabBarItem setTitle:@"Play"];
    [_secondTabBarItem setTitle:@"Favorites"];
    _firstTabBarItem.tag = 0;
    _secondTabBarItem.tag = 1;
    [_myTabBar setSelectedItem:_firstTabBarItem];
}

- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    if (item.tag == 0) {
        _label.text = @"Play";
    } else if (item.tag == 1) {
        _label.text = @"Favorites";
    }
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
