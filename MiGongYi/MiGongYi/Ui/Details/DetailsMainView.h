//
//  DetailsMainView.h
//  MiGongYi
//
//  Created by megil on 9/5/14.
//  Copyright (c) 2014 megil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsMainView : UITableViewController<UITableViewDelegate,UITableViewDataSource>
-(void)resetData:(NSArray *)array Reset:(BOOL)reset;
@end
