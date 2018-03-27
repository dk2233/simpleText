//
//  ViewController.h
//  test_iphone7
//
//  Created by daniel on 27.02.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "thread.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text_queue;
@property (weak, nonatomic) IBOutlet UILabel *label1;


@property (weak, nonatomic) IBOutlet UITextField *text;
@property dispatch_queue_t  MyQueue;
@property int8_t var;
@end

/* this is simple example of
 composition of two different classes
 it gives possibility to access each class */
@interface MyClass_thread_ios : NSObject {
    ViewController *view;
    MyClass_thread *my_thread;
}


-(id)init_thread: (ViewController *)view with: (MyClass_thread *)my_thread textElement:(UITextField *)text1;

@end
