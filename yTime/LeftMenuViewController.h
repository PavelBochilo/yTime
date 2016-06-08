//
//  LeftMenuViewController.h
//  yTime
//
//  Created by Paul on 08.06.16.
//  Copyright © 2016 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftMenuViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, assign) BOOL slideOutAnimationEnabled;

@end
