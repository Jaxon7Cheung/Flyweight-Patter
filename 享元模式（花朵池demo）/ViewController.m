//
//  ViewController.m
//  享元模式（花朵池demo）
//
//  Created by 张旭洋 on 2023/9/14.
//

#import "ViewController.h"
#define kFlowerListCount 200

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FlowerContainerView* flowerContainer = [[FlowerContainerView alloc] initWithFrame: self.view.bounds];
    flowerContainer.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: flowerContainer];
    
    FlowerFactory* factory = [[FlowerFactory alloc] init];
    self.flowerFactory = factory;
    NSMutableArray* flowerList = [NSMutableArray arrayWithCapacity: kFlowerListCount];;
    
    for (NSInteger i = 0; i < kFlowerListCount; ++i) {
        
        //从花朵工厂取得一个共享的花朵享元对象实例
        FlowerType type = arc4random() % kTotalNumberOfFlowerTypes;
        UIView* flowerView = [factory flowerViewWithType: type];
        
        //设置花朵的显示位置和区域
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        CGFloat x = arc4random() % (NSInteger)screenBounds.size.width;
        CGFloat y = arc4random() % (NSInteger)screenBounds.size.height;
        NSInteger minSize = 10;
        NSInteger maxSize = 60;
        CGFloat size = (arc4random() % (maxSize - minSize)) + minSize;
        
        // 把花朵参数存入一个外在对象
        ExtrinsicFlowerState extrinsicState;
        extrinsicState.flowerView = flowerView;
        extrinsicState.area = CGRectMake(x, y, size, size);
        
        // 花朵外在状态添加到花朵列表中
        //ExtrinsicFlowerState不是OC对象，需要用@encode把它编码成NSValue对象才能安全地添加到数组
        [flowerList addObject: [NSValue value: &extrinsicState withObjCType: @encode(ExtrinsicFlowerState)] ];
    }
    
    [flowerContainer setFlowerList: flowerList];
}


@end
