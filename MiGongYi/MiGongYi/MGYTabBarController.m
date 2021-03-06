//
//  MainTabBar.m
//  MiGongYi
//
//  Created by megil on 9/3/14.
//  Copyright (c) 2014 megil. All rights reserved.
//

#import "MGYTabBarController.h"
#import "MGYProgramChildrenViewController.h"
#import "MGYProgramItemViewController.h"
#import "MGYAboutMeViewController.h"
#import "MGYAboutMeViewController.h"
#import "MGYGetRiceViewController.h"
#import "MGYBaseViewController.h"

@interface MGYTabBarController ()

@property(nonatomic, weak) MGYProgramChildrenViewController *listView;
@property(nonatomic, weak) MGYProgramItemViewController *detailsView;
//@property(nonatomic, weak) MGYAboutMeViewController *aboutMeView;
@property(nonatomic, weak) MGYAboutMeViewController *aboutMeView;
@property(nonatomic, weak) MGYGetRiceViewController *getRiceView;

@end

@implementation MGYTabBarController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        // TabBar1
        //tabBarController.tabBar.translucent = NO;
        
        //self.tabBar.translucent = NO;
        [self.tabBar setTintColor:[UIColor orangeColor]];
        UINavigationController *tab1Nav = [UINavigationController new];

        MGYProgramChildrenViewController *listView = [MGYProgramChildrenViewController new];
        //MGYBaseViewController *listView = [MGYBaseViewController new];
        self.listView = listView;
        [tab1Nav pushViewController:listView animated:YES];
        
        UINavigationController *tab2Nav = [UINavigationController new];
        MGYGetRiceViewController *getRiceView = [MGYGetRiceViewController new];
        [tab2Nav pushViewController:getRiceView animated:YES];
        self.getRiceView = getRiceView;
        
        UINavigationController *tab3Nav = [UINavigationController new];
        MGYProgramItemViewController *detailsView = [MGYProgramItemViewController new];
        [tab3Nav pushViewController:detailsView animated:YES];
        self.detailsView = detailsView;
        
        UINavigationController *tab4Nav = [UINavigationController new];
        //MGYAboutMeViewController *aboutMeView = [MGYAboutMeViewController new];
        MGYAboutMeViewController *aboutMeView = [MGYAboutMeViewController new];
        [tab4Nav pushViewController:aboutMeView animated:YES];
        self.aboutMeView = aboutMeView;
        
        
        
        self.tabBar.hidden = YES;
        self.viewControllers = [NSArray arrayWithObjects:tab1Nav, tab2Nav, tab3Nav, tab4Nav, nil];
       // NSLog(@"iiiiiiiii %@", tab1BarItem.);
        
        
        
        
        
//        self.tabBar.translucent = NO;
//        [self.tabBar setTintColor:[UIColor orangeColor]];
//        self.tab1Nav = [UINavigationController new];
//        self.tab1Nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"留守儿童" image:[UIImage imageNamed:@"tabbar_Child_normal"] tag:1];
//        self.listView = [ProgramListView new];
//        [self.tab1Nav pushViewController:self.listView animated:YES];
//        //ProgramListView *listView = [[ProgramListView alloc] initWithNibName:nil bundle:nil];
//        [self.tab1Nav setHidesBottomBarWhenPushed:YES];
//        //[tab1Nav pushViewController:tab1 animated:NO];
//        // TabBar2
//        self.tab2Nav = [[UINavigationController alloc] init];
//        self.tab2Nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"获得大米" image:[UIImage imageNamed:@"tabbar_Get rice_normal"] tag:2];
//        // TabBar3
//        
//        self.tab3Nav = [[UINavigationController alloc] init];
//        self.tab3Nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"公益项目" image:[UIImage imageNamed:@"tabbar_Commonweal_normal"] tag:3];
//        self.detailsView = [[DetailsMainView alloc] initWithStyle:UITableViewStylePlain];
//        [self.tab3Nav pushViewController:self.detailsView animated:YES];
//        [self.tab3Nav setHidesBottomBarWhenPushed:YES];
//        
//        // TabBar4
//        self.tab4Nav = [[UINavigationController alloc] init];
//        self.tab4Nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我" image:[UIImage imageNamed:@"tabbar_Me_normal"] tag:4];
//        
////        self.tab1Nav.navigationBar.hidden = YES;
////        
////        self.tab2Nav.navigationBar.hidden = YES;
////        self.tab3Nav.navigationBar.hidden = YES;
////        self.tab4Nav.navigationBar.hidden = YES;
//        // 组装TabBar
//        self.viewControllers = [NSArray arrayWithObjects:self.tab1Nav, self.tab2Nav, self.tab3Nav, self.tab4Nav, nil];
//        
//        self.detailsSubView = [[ProgramDetailsView alloc] initWithNibName:nil bundle:nil];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


//
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    NSLog(@"%@", sender);
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    // 留守儿童
    [self setSelectedIndex:item.tag];
}

@end
