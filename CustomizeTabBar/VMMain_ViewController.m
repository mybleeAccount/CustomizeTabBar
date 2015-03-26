//
//  VMMain_ViewController.m
//  CustomizeTabBar
//
//  Created by Vu Mai on 3/24/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMMain_ViewController.h"
#import "VMCustomizeTabBar.h"

@interface VMMain_ViewController ()

@end

@implementation VMMain_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTabBar];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initTabBar
{
    VMCustomizeTabBar *tabbar = [[VMCustomizeTabBar alloc] initWithFrame:self.view.frame];
    
    [tabbar addListOfItemImage:[NSMutableArray arrayWithObjects:@"icon_Summary.png",@"icon_Expences.png",@"icon_History.png",@"icon_setting.png", nil]];
    [tabbar addListOfItemText:[NSMutableArray arrayWithObjects:@"Summary",@"Expences",@"History",@"Setting", nil]];
//    [tabbar setFontTabBar:[UIFont systemFontOfSize:12]];
    
    [tabbar iconTabBarWithNumber:4];
    [self.view addSubview:tabbar];
    
}

@end
