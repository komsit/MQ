//
//  registerPage.m
//  MQ
//
//  Created by Komsit on 9/26/56 BE.
//  Copyright (c) 2556 Komsit. All rights reserved.
//

#import "registerPage.h"

@interface registerPage ()

@end

@implementation registerPage

-(void)loadScreen{
	[self.view setBackgroundColor:[UIColor whiteColor]];
	
	int y = 0;
	
	UIView * navViewBar =[[UIView alloc]initWithFrame:CGRectMake(0, y, 320, 40)];
	[navViewBar setBackgroundColor:[UIColor orangeColor]];
	
	UILabel * lblTitle =[[UILabel alloc]initWithFrame:CGRectMake(120, 5, 100, 34)];
	[lblTitle setText:@"Register"];
	[lblTitle setBackgroundColor:[UIColor clearColor]];
	
	
	
	
	
	UIButton * btnClose =[[UIButton alloc]initWithFrame:CGRectMake(5, 5, 50, 14)];
    [btnClose addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnClose setTitle:@"Close" forState:UIControlStateNormal];
    [btnClose setAlpha:0];
	[btnClose.layer setCornerRadius:10];
	[btnClose setBackgroundColor:[UIColor redColor]];
	[btnClose.layer setBorderColor:[[UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1] CGColor]];
	[btnClose.layer setBorderWidth:1];
	
	[navViewBar addSubview:btnClose];
	[navViewBar addSubview:lblTitle];
	[self.view addSubview:navViewBar];
	
	
}
-(void)loadData{
	
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self loadScreen];
	[self loadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
