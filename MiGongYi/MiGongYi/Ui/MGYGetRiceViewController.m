//
//  MGYGetRiceViewController.m
//  MiGongYi
//
//  Created by megil on 9/15/14.
//  Copyright (c) 2014 megil. All rights reserved.
//

#import "MGYGetRiceViewController.h"
#import<QuartzCore/QuartzCore.h>
#import "Masonry.h"

@interface MGYGetRiceViewController ()
@property(nonatomic, weak) UIImageView *backgroundImageView;
@property(nonatomic, weak) UIImageView *knowledgeImageView;
@property(nonatomic, weak) UIImageView *manImageView;
@property(nonatomic, weak) UIButton *boxingView;
@property(nonatomic, weak) UIButton *knowView;
@property(nonatomic, weak) UIButton *shoeView;
@property(nonatomic, weak) UIButton *phoneView;
@property(nonatomic, assign) BOOL isClicked;

@end

@implementation MGYGetRiceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setup
{
    [self.backgroundImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom).with.offset(0);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
    }];
    
    [self.knowledgeImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleView.mas_bottom);
        make.centerX.equalTo(self.view.mas_centerX);
    }];
    
    [self.manImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.knowledgeImageView.mas_top).with.offset(30);
        make.width.mas_equalTo(398/2);
        make.height.mas_equalTo(808/2);
    }];
    
    [self.boxingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleView.mas_bottom).with.offset(274/2);
        make.left.equalTo(self.view.mas_left).with.offset(20);
    }];
    
    [self.shoeView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleView.mas_bottom).with.offset(702/2);
        make.left.equalTo(self.view.mas_left).with.offset(20);
    }];
    
    
    [self.knowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleView.mas_bottom).with.offset(30);
        make.right.equalTo(self.view.mas_right).with.offset(-20);
    }];
    
    [self.phoneView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleView.mas_bottom).with.offset(488/2);
        make.right.equalTo(self.view.mas_right).with.offset(-20);
    }];
}

- (UIButton *)creatMoveButton:(NSString *)path
                            tag:(int)tag
{
    UIButton *button = [UIButton new];
    button.tag = tag;
    button.adjustsImageWhenHighlighted = NO;
    [button setImage:[UIImage imageNamed:path] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickEventOnImage:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)clickEventOnImage:(id)sender
{
    
    if (self.isClicked) {
        return;
    }
    [self.view.layer removeAllAnimations];
    NSLog(@"iiiiiiiiiigggggggggggg %d", [sender tag]);
    
    switch ([sender tag]) {
        case 1:
            [self.manImageView setImage:[UIImage imageNamed:@"page_boxing_selected@2x∏±±æ"]];
            break;
        case 2:
            [self.manImageView setImage:[UIImage imageNamed:@"page_aerobic exercise_selected@2x∏±±æ"]];
            break;
        case 3:
            self.knowledgeImageView.hidden = NO;
            break;
        case 4:
            [self.manImageView setImage:[UIImage imageNamed:@"page_call_selected@2x@png"]];
            break;
        default:
            break;
    }
    self.isClicked = YES;
    
    
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.title = @"获取大米";
    
    UIImageView *backgroundImageView = [UIImageView new];
    [self.view addSubview:backgroundImageView];
    [backgroundImageView setImage:[UIImage imageNamed:@"page_background_normal"]];
    self.backgroundImageView = backgroundImageView;
    
    UIImageView *knowledgeImageView = [UIImageView new];
    [self.view addSubview:knowledgeImageView];
    [knowledgeImageView setImage:[UIImage imageNamed:@"page_knowledge_selected"]];
    self.knowledgeImageView = knowledgeImageView;
    
    UIImageView *manImageView = [UIImageView new];
    [self.view addSubview:manImageView];
    [manImageView setImage:[UIImage imageNamed:@"page_boy_normal@2x∏±±æ"]];
    self.manImageView = manImageView;

    self.boxingView = [self creatMoveButton:@"button_boxing_normal" tag:1];
    [self.view addSubview:self.boxingView];
    
    self.shoeView = [self creatMoveButton:@"button_aerobic exercise_normal" tag:2];
    [self.view addSubview:self.shoeView];
    
    self.knowView = [self creatMoveButton:@"button_knowledge_normal" tag:3];
    [self.view addSubview:self.knowView];
    
    self.phoneView = [self creatMoveButton:@"button_call_normal" tag:4];
    [self.view addSubview:self.phoneView];
    [self setup];
    
    
    // Do any additional setup after loading the view.
}

- (void)animationBegin
{
    CGRect originFrame1 = self.boxingView.frame;
    CGRect originFrame2 = self.shoeView.frame;
    CGRect originFrame3 = self.knowView.frame;
    CGRect originFrame4 = self.phoneView.frame;
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        [UIView setAnimationRepeatCount:NSNotFound];
        [UIView setAnimationRepeatAutoreverses:YES];
        CGRect frame1 = self.shoeView.frame;
        frame1.origin.y = frame1.origin.y - 30;
        self.shoeView.frame = frame1;
        
        CGRect frame2 = self.boxingView.frame;
        frame2.origin.y = frame2.origin.y - 30;
        self.boxingView.frame = frame2;
        
        CGRect frame3 = self.knowView.frame;
        frame3.origin.y = frame3.origin.y - 30;
        self.knowView.frame = frame3;
        
        CGRect frame4 = self.phoneView.frame;
        frame4.origin.y = frame4.origin.y - 30;
        self.phoneView.frame = frame4;
    } completion:^(BOOL finished) {
        self.boxingView.frame = originFrame1;
        self.shoeView.frame = originFrame2;
        self.knowView.frame = originFrame3;
        self.phoneView.frame = originFrame4;
    }];
    
//    [UIView animateWithDuration:1 animations:^{
//        [UIView setAnimationRepeatCount:NSNotFound];
//        [UIView setAnimationRepeatAutoreverses:YES];
//        
//        CGRect frame1 = self.shoeView.frame;
//        frame1.origin.y = frame1.origin.y - 30;
//        self.shoeView.frame = frame1;
//        
//        CGRect frame2 = self.boxingView.frame;
//        frame2.origin.y = frame2.origin.y - 30;
//        self.boxingView.frame = frame2;
//        
//        CGRect frame3 = self.knowView.frame;
//        frame3.origin.y = frame3.origin.y - 30;
//        self.knowView.frame = frame3;
//        
//        CGRect frame4 = self.phoneView.frame;
//        frame4.origin.y = frame4.origin.y - 30;
//        self.phoneView.frame = frame4;
//    } completion:^(BOOL finished) {
//        self.shoeView.frame = originFrame1;
//        self.boxingView.frame = originFrame2;
//        self.knowView.frame = originFrame3;
//        self.phoneView.frame = originFrame4;
//    }];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self animationBegin];
    self.isClicked = NO;
    self.knowledgeImageView.hidden = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
