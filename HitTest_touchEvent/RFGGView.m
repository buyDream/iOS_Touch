//
//  RFGGView.m
//  HitTest_touchEvent
//
//  Created by Refraining on 2017/7/5.
//  Copyright © 2017年 Refraining. All rights reserved.
//

#import "RFGGView.h"

@implementation RFGGView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor orangeColor];
        
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
    NSLog(@"F:%@", [self class]);
    return [super hitTest:point withEvent:event];
}

@end
