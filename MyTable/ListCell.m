//
//  ListCell.m
//  MyTable
//
//  Created by Cat on 7/11/18.
//  Copyright © 2018 Cat. All rights reserved.
//

#import "ListCell.h"

@implementation ListCell

- (void)setData: (NSString *)index article: (NSString *) article {
  self.indexLabel.text = index;
  self.articleLabel.text = article;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

  self.selectionStyle = UITableViewCellSelectionStyleNone;
}

@end
