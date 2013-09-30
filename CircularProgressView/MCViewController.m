//
//  MCViewController.m
//  CircularProgressView
//
//  Created by Christopher Rittersdorf on 9/30/13.
//  Copyright (c) 2013 Christopher Rittersdorf. All rights reserved.
//

#import "MCViewController.h"

@interface MCViewController ()

@end

@implementation MCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSTimer *timer;
    
    percentDone = 0;
    
    _cpv1.circleColor = [UIColor redColor];
    _cpv2.circleColor = [UIColor blueColor];
    _cpv3.circleColor = [UIColor greenColor];
    

    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    [timer fire];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void) timerFired {
    NSLog(@"Timer Fired");
    
    if (percentDone < 1.0) {
        percentDone += 0.05;
        
        [_cpv1 updatePercentDone:percentDone];
        [_cpv2 updatePercentDone:percentDone];
        [_cpv3 updatePercentDone:percentDone];
    }
}

@end
