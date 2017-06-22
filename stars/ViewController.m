//
//  ViewController.m
//  stars
//
//  Created by macserver on 4/7/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *startview;
    int rateMember;
}

@end

@implementation ViewController

- (void)viewDidLoad {
  
    startview = [[UIView alloc] initWithFrame:CGRectMake(200,108, 100, 48)];
    //startview.backgroundColor = [UIColor grayColor];
    NSInteger getrating = 0;
    int x = 5;
    for (int k = 1; k <= 5; k++)
    {
        UIImageView * mystarimage = [[UIImageView alloc] initWithFrame:CGRectMake(x,15,15,15)];
        
        if (getrating >= k)
        {
            mystarimage.image = [UIImage imageNamed:@"star (1).png"];
        }
        else
        {
            mystarimage.image = [UIImage imageNamed:@"star.png"];
        }
        
        mystarimage.tag = k;
        mystarimage.userInteractionEnabled = YES;
        [startview addSubview:mystarimage];
        UITapGestureRecognizer *letterTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateStar:)];
    
        rateMember = mystarimage.tag;
        
        NSLog(@"rateing %ld",(long)rateMember);
        letterTapRecognizer.numberOfTapsRequired = 1;
        [mystarimage addGestureRecognizer:letterTapRecognizer];
        x = x + 10;
    }
    [self.view addSubview:startview];
}

-(void)updateStar :(UITapGestureRecognizer*)sender
{
    UIView *view = sender.view;
    NSLog(@"hello ji %ld", (long)view.tag);
    NSInteger getrating;
    
    switch (view.tag)
    {
        case 1:
            NSLog(@"press 1");
            rateMember = 1;
            break;
        case 2:
            NSLog(@"press 2");
            rateMember = 2;
            break;
        case 3:
            NSLog(@"press 3");
            rateMember = 3;
            break;
        case 4:
            NSLog(@"press 4");
            rateMember = 4;
            break;
        case 5:
            NSLog(@"press 4");
            rateMember = 5;
            break;
        default:
            NSLog(@"press 5");
            rateMember = 5;
            break;
    }
    
    getrating = rateMember;
    NSLog(@"Get rating -------> %ld",(long)getrating);
    int x = 5;
    for (int k = 1; k <= 5 ; k++)
    {
        UIImageView * mystarimage = [[UIImageView alloc] initWithFrame:CGRectMake(x,15,15,15)];
        
        if (getrating >= k)
        {
            mystarimage.image = [UIImage imageNamed:@"star (1).png"];
        }
        else
        {
            mystarimage.image = [UIImage imageNamed:@"star.png"];
        }
        mystarimage.tag = k;
        mystarimage.userInteractionEnabled = YES;
        [startview addSubview:mystarimage];
        UITapGestureRecognizer *letterTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateStar:)];
        letterTapRecognizer.numberOfTapsRequired = 1;
        [mystarimage addGestureRecognizer:letterTapRecognizer];
        x = x + 10;
    }
   
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
