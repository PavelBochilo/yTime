//
//  MainViewController.m
//  yTime
//
//  Created by Paul on 08.06.16.
//  Copyright © 2016 Paul. All rights reserved.
//

#import "MainViewController.h"
#import "LeftMenuViewController.h"
@interface MainViewController ()
@end
@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
