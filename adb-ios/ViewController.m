//
//  ViewController.m
//  adb-ios
//
//  Created by Li Zonghai on 9/28/15.
//  Copyright (c) 2015 Li Zonghai. All rights reserved.
//

#import "ViewController.h"
#import "adb/AdbClient.h"


#define IP  "192.168.110.212"

@interface ViewController ()
@property(strong) AdbClient *adb;

@end

@implementation ViewController
@synthesize adb = _adb;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _adb = [[AdbClient alloc] initWithVerbose:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) list:(id)sender
{
//    [_adb devices:^(BOOL succ, NSString *result1) {
//        
//    }];
}


-(IBAction)connectBtn:(id)sender
{
    [_adb connect:@IP didResponse:^(BOOL succ, NSString *result) {
                

    }];
}

- (IBAction)goLeft:(id)sender {
    [_adb shell:@"input keyevent 21" didResponse:^(BOOL succ, NSString *result) {

    }];
}

- (IBAction)goRight:(id)sender {
    [_adb shell:@"input keyevent 22" didResponse:^(BOOL succ, NSString *result) {

    }];
}

- (IBAction)goTop:(id)sender {
    [_adb shell:@"input keyevent 19" didResponse:^(BOOL succ, NSString *result) {

    }];
}

- (IBAction)goBottom:(id)sender {
    [_adb shell:@"input keyevent 20" didResponse:^(BOOL succ, NSString *result) {

    }];
    
    //Enter:
//    [_adb shell:@"input keyevent 66" didResponse:^(BOOL succ, NSString *result) {
//
//    }];
    
}

//-(IBAction)installApkBtn:(id)sender
//{
//    NSString *apkPath = [[NSBundle mainBundle] pathForResource:@"Term" ofType:@"apk"];
//    [_adb installApk:apkPath flags:ADBInstallFlag_Replace didResponse:^(BOOL succ, NSString *result) {
//        [self.textview performSelectorOnMainThread:@selector(setText:) withObject:result waitUntilDone:YES];
//    }];
//}
//
//
//-(IBAction)uninstallApkBtn:(id)sender
//{
//    [_adb uninstallApk:@"jackpal.androidterm" didResponse:^(BOOL succ, NSString *result) {
//        [self.textview performSelectorOnMainThread:@selector(setText:) withObject:result waitUntilDone:YES];
//    }];
//}
//
//
//-(IBAction)startApk:(id)sender
//{
//    [_adb shell:@"am start jackpal.androidterm/.Term" didResponse:^(BOOL succ, NSString *result) {
//        [self.textview performSelectorOnMainThread:@selector(setText:) withObject:result waitUntilDone:YES];
//    }];
//}


-(IBAction)disconnect:(id)sender
{
    [_adb disconnect:@IP didResponse:^(BOOL succ, NSString *result) {
               
    }];
}


//-(IBAction)ps:(id)sender
//{
//    [_adb shell:@"pm list packages" didResponse:^(BOOL succ, NSString *result) {
//
//        [self.textview performSelectorOnMainThread:@selector(setText:) withObject:result waitUntilDone:YES];
//    }];
//}




@end
