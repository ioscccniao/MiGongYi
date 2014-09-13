//
//  MainTabBar.h
//  MiGongYi
//
//  Created by megil on 9/3/14.
//  Copyright (c) 2014 megil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgramListView.h"
#import "DetailsMainView.h"
#import "ProgramDetailsView.h"
#import "DataManager.h"
@interface MGYTabBarController : UITabBarController

+ (MGYTabBarController *)shareInstance;

- (void)refreshProgramListView:(ProjectType)type reset:(BOOL)reset;
@end
