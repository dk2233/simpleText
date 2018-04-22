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
        int ret;
        NSLog(@" starting ... ");
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5*NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            NSLog(@"\n\n MAIN : after 5 \n\n");
            printf(" std lib ??? \n");
            FILE *file;
            
            NSString *filePath = [[NSBundle mainBundle] pathForResource:@"README" ofType:@"md"];
            printf(" file Path %s \n ",[filePath UTF8String]);
            
            printf("path: %s ",[filePath UTF8String]);
            
            file = fopen([filePath UTF8String], "r");
            if (NULL != file)
            {
                char *tab;
                size_t  len;
                tab = fgetln(file, &len);
                
                printf("from file: \n %s \n",tab);
                printf(" I read %ld bytes \n",len);
                fclose(file);
            }
            
        });
        ret = UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        return ret;
    }
    
}
