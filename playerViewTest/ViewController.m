//
//  ViewController.m
//  playerViewTest
//
//  Created by Mac on 2020/5/15.
//  Copyright © 2020 马 爱林. All rights reserved.
//

#import "ViewController.h"
#import <PlayerViewSDK/PlayerViewSDK.h>

@interface ViewController ()<PlayerViewUICallbackProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor grayColor];
    
    PlayerView *playerView =[[PlayerView alloc]initWithFrame:CGRectMake(0, 80, self.view.bounds.size.width, self.view.bounds.size.width *9/16)];
    [self.view addSubview:playerView];
    [playerView playWithUrl:@"http://stream1.shopch.jp/HLS/out1/prog_index.m3u8"];
    [playerView supportFullScreenWithVC:self];
    playerView.delegateUI =self;

}

-(void)smallMaskViewBackEvent:(id)playerView{
    NSLog(@"退出视频");
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}



@end
