//
//  Home.m
//  MQ
//
//  Created by Komsit on 9/30/56 BE.
//  Copyright (c) 2556 Komsit. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

-(void)loadScreen{
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"UI.png"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self loadScreen];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
