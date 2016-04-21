//
//  LotteryTableViewController.m
//  Jackpot 2
//
//  Created by Ade Cummins on 20/04/2016.
//  Copyright © 2016 Ade Cummins. All rights reserved.
//

#import "LotteryTableViewController.h"
#import "LotteryTicket.h"

@interface LotteryTableViewController ()
@property (strong, nonatomic)NSMutableArray *ticketList;

- (IBAction)addTicket:(id)sender;

@end

@implementation LotteryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Quick Picks";
    UIBarButtonItem *newQuickPickButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTicket:)];
    self.navigationItem.rightBarButtonItem = newQuickPickButton;
    self.ticketList = [[NSMutableArray alloc] initWithCapacity:0];
}

- (void)addTicket:(id)sender
{
    LotteryTicket *newTicket = [[LotteryTicket alloc] initWithRandomNumbers];
    [self.ticketList addObject:newTicket];
    [self.tableView reloadData];
    NSLog(@"%@", newTicket);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ticketList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuickPicksCell" forIndexPath:indexPath];
    
//     Configure the cell...
    LotteryTicket *newLotteryTicket = self.ticketList[indexPath.row];
    cell.textLabel.text = [newLotteryTicket.lotteryNumbers componentsJoinedByString:@", "];
    return cell;
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
