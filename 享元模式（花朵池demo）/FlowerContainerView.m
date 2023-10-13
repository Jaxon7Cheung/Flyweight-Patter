//
//  FlowerContainerView.m
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/15.
//

#import "FlowerContainerView.h"

@implementation FlowerContainerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//把生成的所有花朵实例都填充到FlowerContainerView视图上
- (void)drawRect:(CGRect)rect {
    for (NSValue* stateValue in self.flowerList) {
        ExtrinsicFlowerState flowerExState;
        [stateValue getValue: &flowerExState];
        
        UIView* flowerView = flowerExState.flowerView;
        CGRect frame = flowerExState.area;
        
        [flowerView drawRect: frame];
    }
}

@end
