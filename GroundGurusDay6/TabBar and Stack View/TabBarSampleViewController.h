//
//  TabBarSampleViewController.h
//  GroundGurusDay6
//
//  Created by Earth Maniebo on 04/09/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TabBarSampleViewController : UIViewController<UITabBarDelegate>
@property (weak, nonatomic) IBOutlet UITabBar *myTabBar;
@property (weak, nonatomic) IBOutlet UITabBarItem *firstTabBarItem;
@property (weak, nonatomic) IBOutlet UITabBarItem *secondTabBarItem;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

NS_ASSUME_NONNULL_END
