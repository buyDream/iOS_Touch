//
//  RFGFirstSubVIew.m
//  HitTest_touchEvent
//
//  Created by Refraining on 2017/7/4.
//  Copyright © 2017年 Refraining. All rights reserved.
//

#import "RFGBSubView.h"
#import "RFGDView.h"
#import "RFGEView.h"

@implementation RFGBSubView

//###### B View
- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        RFGDView * firstD = [[RFGDView alloc] initWithFrame:CGRectMake(self.bounds.origin.x + 20, self.bounds.origin.y + 20, self.bounds.size.width - 40, (self.bounds.size.height  - 40) * 0.5)];
        NSLog(@"maxX：%f ~ maxY：%f", CGRectGetMaxX(firstD.bounds),CGRectGetMaxY(firstD.bounds));
        RFGEView * secondE = [[RFGEView alloc] initWithFrame:CGRectMake(self.bounds.origin.x + 20, self.bounds.size.height * 0.5 - 20, self.bounds.size.width - 40, (self.bounds.size.height  - 40) * 0.5)];
        [self addSubview:firstD];
        [self addSubview:secondE];
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (self == [self class]) {
        
    }
    if ([self pointInside:point withEvent:event]) {
        NSLog(@"point in");
        //            return self;
    } else {
        NSLog(@"point not in");
        //            return nil;
    }
    NSLog(@"B:%@", [self class]);

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
