//
//  WI2DetailViewController.h
//  WI2
//
//  Created by 小野 元春 on 2012/08/07.
//  Copyright (c) 2012年 小野 元春. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WI2DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
