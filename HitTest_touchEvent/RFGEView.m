//
//  RFGFirstGrandson2View.m
//  HitTest_touchEvent
//
//  Created by Refraining on 2017/7/4.
//  Copyright © 2017年 Refraining. All rights reserved.
//

#import "RFGEView.h"
//###### E View

@implementation RFGEView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor grayColor];
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
    NSLog(@"E:%@", [self class]);

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
