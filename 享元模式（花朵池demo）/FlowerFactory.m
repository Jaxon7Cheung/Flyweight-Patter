//
//  FlowerFactory.m
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/15.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@implementation FlowerFactory

- (UIView *)flowerViewWithType:(FlowerType)type {
    if (!self.flowerPool) {
        self.flowerPool = [[NSMutableDictionary alloc] initWithCapacity: kTotalNumberOfFlowerTypes];
    }
    
    FlowerView* flowerView = [self.flowerPool objectForKey: [NSNumber numberWithInt: type]];
    
    if (!flowerView) {
        UIImage* flowerImage = nil;
        switch (type) {
            case kAnemone:
                flowerImage = [UIImage imageNamed: @"anemone.png"];
                break;
            case kCosmos:
                flowerImage = [UIImage imageNamed: @"cosmos.png"];
                break;
            case kGerberas:
                flowerImage = [UIImage imageNamed: @"gerberas.png"];
                break;
            case kHollyhock:
                flowerImage = [UIImage imageNamed: @"hollyhock.png"];
                break;
            case kJasmine:
                flowerImage = [UIImage imageNamed: @"jasmine.png"];
                break;
            case kZinnia:
                flowerImage = [UIImage imageNamed: @"zinnia.png"];
                break;
            default:
                break;
        }
        
        flowerView = [[FlowerView alloc] initWithImage: flowerImage];
        [self.flowerPool setObject: flowerView forKey: [NSNumber numberWithInt: type]];
    }
    
    return flowerView;
}

@end

