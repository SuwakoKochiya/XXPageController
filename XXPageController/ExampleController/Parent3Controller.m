//
//  Parent3Controller.m
//  XXPageController
//
//  Created by GoGo: 林祥星 on 2018/6/29.
//  Copyright © 2018年 pogo.inxx. All rights reserved.
//

#import "Parent3Controller.h"
#import "XXPageMenuController.h"
#import "PageCell1Controller.h"

@interface Parent3Controller ()

@end

@implementation Parent3Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass(self.class);
    NSArray *titles = @[@"新闻",@"体育",@"汽车",@"房产"];
    
    NSMutableArray *controllers = [NSMutableArray array];
    [titles enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [controllers addObject:[PageCell1Controller new]];
    }];
    XXPageMenuController *pageMenuController = [[XXPageMenuController alloc] initWithTitles:titles controllers:controllers onNavigationBar:YES];
    pageMenuController.lineColor = [UIColor orangeColor];
    pageMenuController.titleFont = [UIFont systemFontOfSize:14 weight:UIFontWeightLight];
    pageMenuController.titleColor = [UIColor colorWithWhite:0.2 alpha:1];
    pageMenuController.titleSelectedColor = [UIColor blackColor];
    pageMenuController.pageBarBgColor = [UIColor whiteColor];
    pageMenuController.pageBarHeight = 44;
    pageMenuController.lineWidthType = LineWidthTypeStaticShort;
    pageMenuController.lineScrollType = LineScrollTypeDynamicAnimation;
    //因为这里是将pageMenuController添加到ParentController(self类)上的,所以要为pageMenuController设置父视图控制器
    [pageMenuController setSuperViewController:self];
    
    [pageMenuController moveToDefaultIndex:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
