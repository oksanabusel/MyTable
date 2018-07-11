//
//  DetailsController.m
//  MyTable
//
//  Created by Cat on 7/11/18.
//  Copyright © 2018 Cat. All rights reserved.
//

#import "DetailsController.h"

@interface DetailsController ()
@property (weak, nonatomic) IBOutlet UILabel *indexLabel;
@property (weak, nonatomic) IBOutlet UITextView *articleTextView;

@end

@implementation DetailsController

-(void)viewDidLoad {
  [super viewDidLoad];
  
  self.indexLabel.text = self.indexString;
  self.articleTextView.text = self.articleString;
}

@end
