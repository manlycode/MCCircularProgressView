#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MCCircularProgressView : UIView {
    CGFloat smallestDimension;
    CGFloat percentDone;
    
    CAShapeLayer *outerCircle;
    CAShapeLayer *indicatorCircle;
    
    UIColor *_circleColor;
}


@property (nonatomic, strong) UIColor *circleColor;

-(void) updatePercentDone:(CGFloat)progress;
-(void) hide;
@end
