//
//  ViewController.m
//  HitTest_touchEvent
//
//  Created by Refraining on 2017/7/4.
//  Copyright © 2017年 Refraining. All rights reserved.
//

#import "ViewController.h"
#import "RFGBSubView.h"
#import "RFGCSubview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RFGBSubView *firt = [[RFGBSubView alloc] initWithFrame:CGRectMake(20, 20, [UIScreen mainScreen].bounds.size.width - 40, [UIScreen mainScreen].bounds.size.height * 0.5 - 40)];
    RFGCSubview *second = [[RFGCSubview alloc] initWithFrame:CGRectMake( 20, [UIScreen mainScreen].bounds.size.height * 0.5 - 40, [UIScreen mainScreen].bounds.size.width - 40, [UIScreen mainScreen].bounds.size.height * 0.5 - 20)];
    second.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:second];
    [self.view addSubview:firt];

}


//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    //    if ([self pointInside:point withEvent:event]) {
//    //        NSLog(@"point not in");
//    //        return self;
//    //    } else {
//    //        NSLog(@"point not in");
//    //        return nil;
//    //    }
//    return [super hitTest:point withEvent:event];
//}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __PRETTY_FUNCTION__);

}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __PRETTY_FUNCTION__);

}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __PRETTY_FUNCTION__);

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    NSLog(@"%s", __PRETTY_FUNCTION__);
}



@end
