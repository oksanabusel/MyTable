//
//  ListCell.h
//  MyTable
//
//  Created by Cat on 7/11/18.
//  Copyright © 2018 Cat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *indexLabel;
@property (weak, nonatomic) IBOutlet UILabel *articleLabel;

- (void)setData: (NSString *)index article: (NSString *)article;

@end
