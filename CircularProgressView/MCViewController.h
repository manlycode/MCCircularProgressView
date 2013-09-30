//
//  MCViewController.h
//  CircularProgressView
//
//  Created by Christopher Rittersdorf on 9/30/13.
//  Copyright (c) 2013 Christopher Rittersdorf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCCircularProgressView.h"


@interface MCViewController : UIViewController {
    float percentDone;
}

@property (nonatomic) IBOutlet MCCircularProgressView *cpv1;
@property (nonatomic) IBOutlet MCCircularProgressView *cpv2;
@property (nonatomic) IBOutlet MCCircularProgressView *cpv3;

@end
