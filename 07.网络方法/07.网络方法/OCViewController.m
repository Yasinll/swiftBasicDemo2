//
//  OCViewController.m
//  07.网络方法
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

#import "OCViewController.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    [self loadData];
    
}


// 加载网络数据
-(void)loadData {

    //http://www.weather.com.cn/data/sk/101010100.html
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSLog(@"%@", request);
        
    }] resume];

}



@end
