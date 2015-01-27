//
//  MovieCell.h
//  rottenTomatoes
//
//  Created by Sameer Shah on 1/26/15.
//  Copyright (c) 2015 Sameer Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@end
