//
//  VMCustomizeTabBar.h
//  CustomizeTabBar
//
//  Created by Vu Mai on 3/24/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol VMCustomizeTabBarDelegate;

@interface VMCustomizeTabBar : UIView

@property (nonatomic) id<VMCustomizeTabBarDelegate> delegate;

-(void)iconTabBarWithNumber:(NSInteger)num;
-(void)setFontTabBar:(UIFont*)font;
-(void)addListOfItemText:(NSMutableArray*)arr;
-(void)addListOfItemImage:(NSMutableArray*)arr;

@end


@protocol VMCustomizeTabBarDelegate <NSObject>

@required
-(void)switchToTabNumber:(NSInteger)num withView:(VMCustomizeTabBar*)tabBarView;
@end