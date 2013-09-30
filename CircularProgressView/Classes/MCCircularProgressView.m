#import "MCCircularProgressView.h"

@implementation MCCircularProgressView

- (void)_commonInit {
    percentDone = 0.0;
    self.backgroundColor = [UIColor clearColor];
    
    smallestDimension = [self getSmallestDimension];
    outerCircle       = [CAShapeLayer layer];
    indicatorCircle   = [CAShapeLayer layer];
    
    [self.layer addSublayer:outerCircle];
    [self.layer addSublayer:indicatorCircle];
    
    outerCircle.position = self.center;
    outerCircle.lineWidth = 2;

    indicatorCircle.position = self.center;
    indicatorCircle.lineWidth = [self indicatorLineWidth];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self _commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self _commonInit];
    }
    return self;
}

-(CGFloat) getSmallestDimension {
    if (self.bounds.size.width == 0) {
        @throw [NSException exceptionWithName:@"BoundsTooSmall"
                                       reason:@"The width of this view is too small"
                                     userInfo:nil];
    }
    
    if (self.bounds.size.height == 0) {
        @throw [NSException exceptionWithName:@"BoundsTooSmall"
                                       reason:@"The height of this view is too small"
                                     userInfo:nil];
    }
    
    if (self.bounds.size.height == self.bounds.size.width) {
        return self.bounds.size.height;
    }
    
    if (self.bounds.size.height > self.bounds.size.width) {
        return self.bounds.size.width;
    }
    
    if (self.bounds.size.height < self.bounds.size.width) {
        return self.bounds.size.height;
    }
    
    return 0.0;
}


-(void) buildCircleProperties:(CAShapeLayer*)shape {
    if (_circleColor == nil) {
        _circleColor = [UIColor colorWithRed:250.0/255.0
                                           green:250.0/255.0
                                            blue:250.0/255.0
                                           alpha:0.8];
    }
    
    shape.strokeColor = _circleColor.CGColor;
    shape.fillColor   = [UIColor clearColor].CGColor;
}

-(void) layoutSubviews {
    [super layoutSubviews];
    
    [self buildCircleProperties:outerCircle];
    [self buildCircleProperties:indicatorCircle];
    
    outerCircle.path = [UIBezierPath bezierPathWithArcCenter:[self relativeCenter]
                                                      radius:(smallestDimension/2.0)
                                                  startAngle:0
                                                    endAngle:(2*M_PI)
                                                   clockwise:YES].CGPath;
    
    indicatorCircle.path = [UIBezierPath bezierPathWithArcCenter:[self relativeCenter]
                                                          radius:[self indicatorRadius]
                                                      startAngle:(1.5*M_PI)
                                                        endAngle:((1.5*M_PI)+(2*M_PI))
                                                       clockwise:YES].CGPath;
    [indicatorCircle setStrokeEnd:0.0];
    [outerCircle setFrame:self.bounds];
    [indicatorCircle setFrame:self.bounds];
}

-(CGPoint) relativeCenter {
    return CGPointMake(self.bounds.size.width/2.0, self.bounds.size.height/2.0);
}

-(CGFloat) indicatorRadius {
    return (smallestDimension/2.0) - (indicatorCircle.lineWidth/2.0);
}

-(CGFloat) indicatorLineWidth {
    return (smallestDimension * 0.33);
}

-(void) updatePercentDone:(CGFloat)progress {
    percentDone = progress;
    [CATransaction begin];
    [CATransaction setAnimationDuration:0.25];
    [indicatorCircle setStrokeEnd:percentDone];
    [CATransaction commit];
}

-(void) hide {
    [CATransaction begin];
    [CATransaction setAnimationDuration:0.25];
    [self removeFromSuperview];
    [CATransaction commit];
}

@end
