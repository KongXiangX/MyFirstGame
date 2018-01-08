//
//  GameViewController.m
//  MyFirstGame
//
//  Created by apple on 2018/1/6.
//  Copyright © 2018年 GS. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "MyScene.h"
#import <SpriteKit/SKAudioNode.h>

@implementation GameViewController


- (void)viewDidLoad {
    [super viewDidLoad];

//    // Load the SKScene from 'GameScene.sks'
//    GameScene *scene = (GameScene *)[SKScene nodeWithFileNamed:@"GameScene"];
//
//    // Set the scale mode to scale to fit the window
//    scene.scaleMode = SKSceneScaleModeAspectFill;
//
//    SKView *skView = (SKView *)self.view;
//
//    // Present the scene
//    [skView presentScene:scene];
//
//    skView.showsFPS = YES;
//    skView.showsNodeCount = YES;
    
    SKView * view = (SKView *)self.view;
    view.showsNodeCount = YES;
    view.showsFPS = YES;
    view.showsDrawCount = YES;
    
    
    MyScene * scene = [MyScene sceneWithSize:view.bounds.size];
    scene.scaleMode = SKSceneScaleModeFill;
    [view presentScene:scene];
    
    
    
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
