//
//  RFGSecondSubview.m
//  HitTest_touchEvent
//
//  Created by Refraining on 2017/7/4.
//  Copyright © 2017年 Refraining. All rights reserved.
//

#import "RFGCSubview.h"
#import "RFGFView.h"
#import "RFGGView.h"
#import "RFGHVIew.h"

@implementation RFGCSubview

//###### C View
- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        RFGFView * first = [[RFGFView alloc] initWithFrame:CGRectMake(20, 20, self.bounds.size.width * 0.5, self.bounds.size.height * 0.5)];
        RFGGView *second = [[RFGGView alloc] initWithFrame:CGRectMake(self.bounds.size.width * 0.5 + 30, 50, 70, 50)];
        RFGHVIew *third = [[RFGHVIew alloc] initWithFrame:CGRectMake(20, self.bounds.size.height * 0.5 + 30, 70, 50)];
        [self addSubview:first];
//        [self addSubview:third];
//        [self addSubview:second];
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if ([self pointInside:point withEvent:event]) {
        NSLog(@"point  in");
        //            return self;
    } else {
        NSLog(@"point not in");
        //            return nil;
    }
    NSLog(@"C:%@", [self class]);

    return [super hitTest:point withEvent:event];
}
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
