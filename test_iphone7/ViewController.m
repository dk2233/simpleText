//
//  ViewController.m
//  test_iphone7
//
//  Created by daniel on 27.02.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "ViewController.h"

dispatch_time_t time1;


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.label1 setTextColor:[UIColor blueColor] ];
    //[UIFont ]
    [self.label1 setFont:[UIFont fontWithName:@"Cochin" size:9]];
    [self.text_queue setFont:[UIFont systemFontOfSize:8]];
    [self.text setText:@"afg"];
    MyClass_thread *myclass = [[MyClass_thread alloc ] init];
    time1= dispatch_time(DISPATCH_TIME_NOW, 2*NSEC_PER_SEC);
    self.MyQueue = dispatch_get_main_queue();
    self.var = 8;
    
    NSString *temp_s = [NSString stringWithFormat:@"%@",self.MyQueue];
    
    [_text_queue setText:temp_s];
    
    //dispatch_queue_create("TestQueue", DISPATCH_QUEUE_SERIAL);
//
    MyClass_thread_ios *class_comp = [[MyClass_thread_ios alloc] init_thread:self with:myclass textElement:self.text];
    
    
    
    dispatch_after(time1, _MyQueue, ^{
        [self.text setText:@" after 2 sec "];
    });
                   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
