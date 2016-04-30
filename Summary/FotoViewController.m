//
//  ViewController.m
//  Summary
//
//  Created by Admin on 28.04.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "FotoViewController.h"

@interface FotoViewController ()
@property (weak, nonatomic) UIPageControl *pageControl;
@property (weak, nonatomic) UIScrollView *viewScroll;
@end

@implementation FotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self newScrollViews];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) newScrollViews{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(20, 98, 280, 372)];
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake(280*4, 315);
    scrollView.layer.cornerRadius = 3.0f;
   
    for (int i = 0; i < 4; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d", i]];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(280*i, 0, 280, 325)];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [imageView setImage:image];
        [scrollView addSubview:imageView];
    }
    scrollView.delegate = self;
    self.viewScroll = scrollView;
    [self.view addSubview:scrollView];
    
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(20, 400, 280, 37)];
   
    pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:255/255 green:65/255 blue:20/255 alpha:1];
    pageControl.pageIndicatorTintColor = [UIColor colorWithRed:29/255 green:31/255 blue:36/255 alpha:1];
    pageControl.numberOfPages = 4;
    [pageControl addTarget:self action:@selector(onPageControlValueChanged:)
          forControlEvents:UIControlEventValueChanged];
    self.pageControl = pageControl;
    [self.view addSubview:pageControl];
}
- (void) onPageControlValueChanged:(UIPageControl *)sender {
   CGPoint contentOffset = CGPointMake(self.viewScroll.frame.size.width * self.pageControl.currentPage, 0);
    [self.viewScroll setContentOffset:contentOffset animated:YES];
}

- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger currentPage = self.viewScroll.contentOffset.x/self.viewScroll.frame.size.width;
    [self.pageControl setCurrentPage:currentPage];
    
}
@end
