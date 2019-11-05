//
//  ContactDetailsViewController.h
//  GroundGurusDay6
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (assign, nonatomic) NSString *contactName;

@end

NS_ASSUME_NONNULL_END
