//
//  FIREntryTableViewController.m
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import "FIREntryTableViewController.h"
#import "FIREntryController.h"
#import "FIREntryTableViewCell.h"
#import "FIREntryDetailViewController.h"

@interface FIREntryTableViewController ()

@property (nonnull) NSString *destinationVC;

@end

@implementation FIREntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [FIREntryController shared].entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FIREntryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    FIREntryModel *entry = [FIREntryController shared].entries[indexPath.row];
    
    cell.entry = entry;
    return cell;
}



// Override to support editing the table view.
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        FIREntryModel *entry = [FIREntryController shared].entries[indexPath.row];
        [[FIREntryController shared] removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"toDetailVC"]){
        FIREntryDetailViewController* destinationVC = segue.destinationViewController;
        NSIndexPath* indexPath = self.tableView.indexPathForSelectedRow;
        FIREntryModel* entry = [[FIREntryController shared].entries objectAtIndex:indexPath.row];
        destinationVC.entry = entry;
    }
}

@end

