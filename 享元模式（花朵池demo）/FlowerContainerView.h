//
//  FlowerContainerView.h
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct ExtrinsicFlowerState {
    __unsafe_unretained UIView* flowerView;
    CGRect area;
} ExtrinsicFlowerState;

@interface FlowerContainerView : UIView

@property (nonatomic, copy)NSArray* flowerList;

@end

NS_ASSUME_NONNULL_END
