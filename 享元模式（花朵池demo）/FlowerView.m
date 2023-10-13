//
//  FlowerView.m
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/14.
//

#import "FlowerView.h"

@implementation FlowerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (void)drawRect:(CGRect)rect {
    [self.image drawInRect: rect];
}

@end
