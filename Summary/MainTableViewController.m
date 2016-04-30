//
//  MainTableViewController.m
//  Summary
//
//  Created by Admin on 28.04.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "MainTableViewController.h"
#import "FotoViewController.h"
#import "EducationViewController.h"
#import "SummaryViewController.h"
#import "InterestsViewController.h"
@interface MainTableViewController ()
@property (nonatomic, strong) NSMutableArray *arraySummaryPoints;
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIAlertView *alertFirst = [[UIAlertView alloc]initWithTitle:@"Hello!" message:@"My name is Victor and I want you to reviewed with my summary." delegate:nil cancelButtonTitle:@"Let's go!" otherButtonTitles:nil, nil];
    [alertFirst show];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) viewWillAppear:(BOOL)animated {
    self.arraySummaryPoints = [[NSMutableArray alloc] initWithObjects:@"1. Foto", @"2. Education", @"3. Objective", @"4. Summary", @"5. Interests", @"6. Summary in PDF", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.arraySummaryPoints.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"MainTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    NSString *tableString = [self.arraySummaryPoints objectAtIndex:indexPath.row];
    cell.textLabel.text = tableString;
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0){
        FotoViewController *viewFoto = [self.storyboard instantiateViewControllerWithIdentifier:@"viewFoto"];
        [self.navigationController pushViewController:viewFoto animated:YES];
    }
    else if (indexPath.row == 1){
        EducationViewController *viewEducation = [self.storyboard instantiateViewControllerWithIdentifier:@"viewEducation"];
        [self.navigationController pushViewController:viewEducation animated:YES];
    }
    else if (indexPath.row == 2){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Objective" message:@"Start a career Junior iOS developer in the company and every day to improve yourself, as a programmer." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    else if (indexPath.row == 3){
        SummaryViewController *viewSummary = [self.storyboard instantiateViewControllerWithIdentifier:@"viewSummary"];
        [self.navigationController pushViewController:viewSummary animated:YES];
    }
    else if (indexPath.row == 4){
        InterestsViewController *viewInterests = [self.storyboard instantiateViewControllerWithIdentifier:@"viewInterests"];
        [self.navigationController pushViewController:viewInterests animated:YES];
    }
    else if (indexPath.row == 5){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Summary in PDF" message:@"If you want to reviewed with my resume in a PDF format. You can go to this link and download the file.                               https://www.dropbox.com/home?preview=Work.pdf" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
        [alert show];
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
