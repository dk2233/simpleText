//
//  ClassComposition.m
//  test_iphone7
//
//  Created by Daniel Kucharski on 26.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "thread.h"
#import "ViewController.h"


@implementation MyClass_thread_ios
    
-(id)init_thread: (ViewController *)view with: (MyClass_thread *)my_thread textElement:(UITextField *)text1;

{
    my_thread.seconds = 0;
    
    
    
    [text1 setText:@" tutaj "];
    //NSLog(@" var is %d ",view.var);
    dispatch_time_t time1;
    time1 = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(NSEC_PER_SEC*7));
    dispatch_after(time1, dispatch_get_main_queue(), ^{
        [view.text setText:@" a nie tu "];
        NSLog(@" minelo ");
        
    }
                   );
    
    [self UpdateTimer:view with:my_thread];
    
    return self;
}

-(void)UpdateTimer:(ViewController *)view with:(MyClass_thread *)my_thread
{
    [view.text_timer setText:[NSString stringWithFormat:@"seconds: %d",my_thread.seconds]];
    [view.text_queue setText:[NSString stringWithFormat:@"%@",my_thread]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        
        //it is calling itself
        my_thread.seconds++;
        [self UpdateTimer:view with:my_thread];
        
    });
    
}
    
    
@end
