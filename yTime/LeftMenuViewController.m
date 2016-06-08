//
//  LeftMenuViewController.m
//  yTime
//
//  Created by Paul on 08.06.16.
//  Copyright © 2016 Paul. All rights reserved.
//

#import "LeftMenuViewController.h"
#import <SlideNavigationContorllerAnimatorFade.h>
#import <SlideNavigationContorllerAnimatorScale.h>
#import <SlideNavigationContorllerAnimatorSlide.h>
#import <SlideNavigationContorllerAnimatorScaleAndFade.h>
#import <SlideNavigationContorllerAnimatorSlideAndFade.h>
@interface LeftMenuViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *arrayOfNames;
@end
@implementation LeftMenuViewController
@dynamic tableView;
#define MENU_NEW_SLIDE_OFFSET 80
- (id)initWithCoder:(NSCoder *)aDecoder {
    self.slideOutAnimationEnabled = YES;
    return [super initWithCoder:aDecoder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor colorWithRed:245.0/255.0 green: 245.0/255.0  blue: 245.0/255.0 alpha:1];
//    self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    [SlideNavigationController sharedInstance].portraitSlideOffset = MENU_NEW_SLIDE_OFFSET;
    self.tableView.separatorColor = [UIColor lightGrayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case 0:{
            return 6;
            break;
        }
        case 1:{
            return 6;
            break;
        }
        default:{
            return 0;
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leftMenuCell" forIndexPath:indexPath];
    
  _arrayOfNames = @[@"Язык", @"Как играть", @"Правила игры", @"Правила смайлов", @"Правила 'Мои данные'", @"Правила 'Мои рефералы'", @"Мои смайлы ", @"Мои данные", @"Мои рефералы - 1", @"Мои рефералы - 2", @"Мои рефералы - 3", @"Мои рефералы - 4"];
    if (indexPath.section == 0) {
        cell.textLabel.text = _arrayOfNames[indexPath.row];
    } else {
        cell.textLabel.text = _arrayOfNames[indexPath.row + 5];
    }
    cell.backgroundColor = [UIColor colorWithRed:245.0/255.0 green: 245.0/255.0  blue: 245.0/255.0 alpha:1];
    return cell;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
   
    UIView *view =[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 85)];
    view.backgroundColor = [UIColor colorWithRed:245.0/255.0 green: 245.0/255.0  blue: 245.0/255.0 alpha:1];
    UIView *view1 =[[UIView alloc] initWithFrame:CGRectMake(0, 83, self.tableView.frame.size.width, 2)];
    view1.backgroundColor = [UIColor blueColor];
    view1.alpha = 0.4;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title.png"]];
    imageView.frame = CGRectMake(10, 20, imageView.frame.size.width, imageView.frame.size.height);
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [view addSubview:view1];
    [view addSubview:imageView];
    return view;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *view =[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 2)];
    view.backgroundColor = [UIColor blueColor];
    view.alpha = 0.4;
    return view;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 85;
    } else {
    return 0;
}
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else {
        return 0;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 67;
    }
    else {
        return 61;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
