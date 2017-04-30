//
//  ViewController.m
//  NSDictionary
//
//  Created by Junior Samaroo on 2017-04-30.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSDictionary cant be modified
    NSNumber *age = [NSNumber numberWithInt:40];
    // Can mix datatypes (dangerous)
    NSDictionary *dict = @{@"jack": @"Smith", @"MyAGE": age};
    int myAge = [[dict objectForKey:@"MyAGE"]intValue];
    
    //NSMutableDictionary can be modified
    NSMutableDictionary *mut = [@{@"1":@"bmw",@"2":@"bmw2"} mutableCopy]; //literal syntax with mutable copy (not preferred)
    //Better syntax
    NSMutableDictionary *mut2 = [[NSMutableDictionary alloc]init];
    [mut2 setObject:@"an obj" forKey:@"a key"];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
