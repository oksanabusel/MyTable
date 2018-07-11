//
//  ListController.m
//  MyTable
//
//  Created by Cat on 7/11/18.
//  Copyright © 2018 Cat. All rights reserved.
//

#import "ListController.h"
#import "ListCell.h"
#import "DetailsController.h"

@interface ListController ()

@property (nonatomic) NSArray *myStrings;

@end

@implementation ListController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.myStrings = [NSArray arrayWithObjects: @"Zero", @"First", @"Second", @"Third", nil];
  
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.myStrings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  ListCell *listCell = [tableView dequeueReusableCellWithIdentifier:@"ListCell" forIndexPath:indexPath];
  
  [listCell setData:[NSString stringWithFormat:@"%ld", (long)indexPath.row] article:self.myStrings[indexPath.row]];
  
  return listCell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  NSArray *someArray = [NSArray arrayWithObjects: [NSString stringWithFormat:@"INDEX: %ld", indexPath.row], self.myStrings[indexPath.row], nil];
  
  [self performSegueWithIdentifier:@"ShowDetails" sender:someArray];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"ShowDetails"]) {
    DetailsController *detailsController = [segue destinationViewController];
    detailsController.indexString = (NSString *)sender[0];
    detailsController.articleString = (NSString *)sender[1];
  }
}

@end
