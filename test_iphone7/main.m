//
//  main.m
//  test_iphone7
//
//  Created by daniel on 27.02.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
        
    @autoreleasepool {
        NSLog(@" starting ... ");
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5*NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            NSLog(@"\n\n MAIN : after 5 \n\n");
            
        });
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
}
