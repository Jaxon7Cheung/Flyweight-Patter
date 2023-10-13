//
//  FlowerFactory.h
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    kAnemone = 0, kCosmos, kGerberas, kHollyhock, kJasmine,
    kZinnia, kTotalNumberOfFlowerTypes
} FlowerType;

@interface FlowerFactory : NSObject /*{
    @private
    NSMutableDictionary* flowerPool;
}*/

@property (nonatomic, strong)NSMutableDictionary* flowerPool;

- (UIView *)flowerViewWithType: (FlowerType)type;

@end

NS_ASSUME_NONNULL_END
