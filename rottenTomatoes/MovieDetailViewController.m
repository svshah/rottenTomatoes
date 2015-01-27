//
//  MovieDetailViewController.m
//  rottenTomatoes
//
//  Created by Sameer Shah on 1/26/15.
//  Copyright (c) 2015 Sameer Shah. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *movieName;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.movieName.text = self.movies[@"title"];
    self.synopsisLabel.text = self.movies[@"synopsis"];
    
    //    NSDictionary *movie = self.movies[indexPath.row];
        NSString *posterStr = [self.movies valueForKeyPath:@"posters.detailed"];
    [posterStr stringByReplacingOccurrencesOfString:@"tmb" withString:@"ori"];
    [self.posterImageView setImageWithURL:[NSURL URLWithString:posterStr]];
    //    [mdvc.moviePoster setImageWithURL:[NSURL URLWithString:posterStr]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
