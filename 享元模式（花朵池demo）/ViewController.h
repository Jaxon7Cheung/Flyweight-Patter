//
//  ViewController.h
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/14.
//

#import <UIKit/UIKit.h>
#import "FlowerFactory.h"
#import "FlowerContainerView.h"

@interface ViewController : UIViewController

@property (nonatomic, strong)FlowerFactory* flowerFactory;

@end

