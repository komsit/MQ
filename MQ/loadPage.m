//
//  loadPage.m
//  MQ
//
//  Created by Komsit on 9/21/56 BE.
//  Copyright (c) 2556 Komsit. All rights reserved.
//

#import "loadPage.h"
#import "registerPage.h"

@interface loadPage ()
{
    UIButton * btnFacebook;
    UIButton * btnEmail;
    UIView   * viewLogin;
    UIButton * btnLogin;
    UIButton * btnCancel;
	UILabel * lblRegister;
	UIButton * btnRegister;
	UIView * line1;
    int y;
}
@end

@implementation loadPage


#pragma Button Pressed
-(void)buttonPressed:(UIButton*)sender{
    switch (sender.tag) {
        case 1:
            NSLog(@"Tag: 1");
            //----facebook
            
            break;
            case 2:
            [UIView animateWithDuration:0.5
                             animations:^{
                                 [viewLogin setHidden:NO];
                                 [btnLogin setHidden:NO];
                                 [btnFacebook setAlpha:0];
                                 [self.view addSubview:viewLogin];
                                 
                             }
                             completion:^(BOOL finished){
                                 [UIView animateWithDuration:1.0 animations:^{
                                     [btnEmail setFrame:CGRectMake(50, y-50, 220, 40)];
                                     [btnEmail setAlpha:0];
                                     
                                     [viewLogin setAlpha:1];
                                     [viewLogin setFrame:CGRectMake(20, y-50, 280, 88)];
                                     [btnCancel setHidden:NO];
                                     
                                 }
                                completion:^(BOOL finished){
                                    [UIView animateWithDuration:1.0 animations:^{
                                        //[btnLogin setFrame:CGRectMake(20, y+50, 280, 40)];
                                        [btnLogin setFrame:CGRectMake(20, y+50, 135, 40)];
                                        [self.view addSubview:btnLogin];
                                        [btnLogin setAlpha:1];
                                        
                                        
                                        [btnCancel setFrame:CGRectMake(165, y+50, 135, 40)];
                                        [self.view addSubview:btnCancel];
                                        [btnCancel setAlpha:1];
										
										
										[lblRegister setHidden:NO];
										[lblRegister setAlpha:1];
										
										[btnRegister setHidden:NO];
										[btnRegister setAlpha:1];
										
										[line1	setHidden:NO];
										[line1 setAlpha:1];
                                        
                                    }];
                                }];
                                 
                             }];
            break;
            
        
    }
}
-(void)btnLoginPressed:(UIButton*)sender{
    switch (sender.tag) {
        case 1:
            //---Sing -in
            break;
            
        case 2:
            //---Cancel
            [UIView animateWithDuration:1.0 animations:^{
                [btnCancel setFrame:CGRectMake(16, y, 300, 150)];
            }
                             completion:^(BOOL finished){
                                 [UIView animateWithDuration:1.0 animations:^{
                                     [btnCancel setFrame:CGRectMake(165, y+50, 135, 40)];
                                
                                 }
                                                  completion:^(BOOL finished){
                                                      [btnCancel setAlpha:0];
                                                      [btnCancel setHidden:YES];
                                                      
                                                      [viewLogin setAlpha:0];
                                                      [viewLogin setHidden:YES];
                                                      
                                                      [btnLogin setAlpha:0];
                                                      [btnLogin setHidden:YES];
                                                      
                                                      [UIView animateWithDuration:0.5 animations:^{
                                                          [btnFacebook setFrame:CGRectMake(50, y, 220, 40)];
                                                          [btnFacebook setAlpha:1];
                                                          
                                                          [UIView animateWithDuration:2.5 animations:^{
                                                              [btnEmail setFrame:CGRectMake(50, y+50, 220, 40)];
                                                              [btnEmail setAlpha:1];
															  
															  
															  [lblRegister setHidden:YES];
															  [lblRegister setAlpha:0];
															  
															  [btnRegister setHidden:YES];
															  [btnRegister setAlpha:0];
															  
															  [line1	setHidden:YES];
															  [line1 setAlpha:0];
                                                          }];
                                                      }];
                                    }];}];
            break;
    }
    
}
-(void)btnRegisterPressed{
	registerPage * rgPage =[[registerPage alloc]init];
	[self presentViewController:rgPage animated:YES completion:nil];
	
}


-(void)loadScreen{
    
}
-(void)loadData{
    
    CGSize sc = [[UIScreen mainScreen] bounds].size;
    y = 250;
    
    
    NSString *udid = [[UIDevice currentDevice] systemName];
    NSLog(@"UDID :%@",udid);
    
   

    
    //++++++++++++++++++++//
    //----Chack Screen----//
    //++++++++++++++++++++//
    
    if(sc.height == 480){
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"MainPage-i4.jpg"]];
    }else{
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"MainPage-i5.jpg"]];
    }
    
    //++++++++++++++++++++++++//
    //----Button Facebook----//
    //++++++++++++++++++++++//
    
    btnFacebook =[[UIButton alloc]initWithFrame:CGRectMake(50, y, 220, 40)];
    [btnFacebook addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnFacebook setImage:[UIImage imageNamed:@"button-facebook.png"] forState:UIControlStateNormal];
    [btnFacebook setTag:1];
    [btnFacebook setAlpha:0];
    [self.view addSubview:btnFacebook];
    
    
    
    //++++++++++++++++++++++++//
    //----Button Log-in------//
    //++++++++++++++++++++++//
    
    btnEmail =[[UIButton alloc]initWithFrame:CGRectMake(50, y+50, 220, 40)];
    [btnEmail addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnEmail setImage:[UIImage imageNamed:@"button-email.png"] forState:UIControlStateNormal];
    [btnEmail setTag:2];
    [btnEmail setAlpha:0];
    [self.view addSubview:btnEmail];
    
    
    
    //-- *********** --//
    //-- LOGIN PANEL --//
    //-- *********** --//
    UITextField *txtEmail = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 280, 30)];
    [txtEmail setPlaceholder:@"Log in Email"];
    [txtEmail setKeyboardType:UIKeyboardTypeEmailAddress];
    [txtEmail setReturnKeyType:UIReturnKeyDone];
    [txtEmail addTarget:self action:@selector(textFieldDoneEditing:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [txtEmail addTarget:self action:@selector(textFieldActive) forControlEvents:UIControlEventEditingDidBegin];
    
    UIView *viewLine = [[UIView alloc] initWithFrame:CGRectMake(0, 44, 280, 1)];
    [viewLine setBackgroundColor:[UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1]];
    
    UITextField *txtPassword = [[UITextField alloc] initWithFrame:CGRectMake(10, 54, 280, 30)];
    [txtPassword setPlaceholder:@"Password"];
    [txtPassword setReturnKeyType:UIReturnKeyDone];
    [txtPassword addTarget:self action:@selector(textFieldDoneEditing:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [txtPassword addTarget:self action:@selector(textFieldActive) forControlEvents:UIControlEventEditingDidBegin];
    
    viewLogin = [[UIView alloc] init];
    [viewLogin setBackgroundColor:[UIColor whiteColor]];
    //[viewLogin setFrame:CGRectMake(20, y-50, 280, 88)];
    [viewLogin setFrame:CGRectMake(20, sc.height+200, 280, 88)];
    [viewLogin.layer setCornerRadius:10];
    [viewLogin.layer setBorderColor:[[UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1] CGColor]];
    [viewLogin.layer setBorderWidth:1];
    [viewLogin addSubview:txtEmail];
    [viewLogin addSubview:viewLine];
    [viewLogin addSubview:txtPassword];
    
    
    
    //-- *********** --//
    //-- Button LOGIN  --//
    //-- *********** --//
    
    btnLogin =[UIButton buttonWithType:UIButtonTypeCustom];
    [btnLogin setFrame:CGRectMake(20, y+50, 120, 40)];
    [btnLogin addTarget:self action:@selector(btnLoginPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnLogin setTitle:@"Sign in" forState:UIControlStateNormal];
    [btnLogin setTintColor:[UIColor whiteColor]];
    [btnLogin setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [btnLogin.layer setCornerRadius:15];
    [btnLogin setBackgroundColor:[UIColor greenColor]];
    [btnLogin setAlpha:0];
    [btnLogin setTag:1];
    
    
    //-- *********** --//
    //-- Button Cancel--//
    //-- *********** --//
    
    btnCancel =[UIButton buttonWithType:UIButtonTypeCustom];
    [btnCancel setFrame:CGRectMake(160, y+50, 120, 40)];
    [btnCancel addTarget:self action:@selector(btnLoginPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnCancel setTitle:@"Cancel" forState:UIControlStateNormal];
    [btnCancel setTintColor:[UIColor whiteColor]];
    [btnCancel setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [btnCancel.layer setCornerRadius:15];
    [btnCancel setBackgroundColor:[UIColor orangeColor]];
    [btnCancel setAlpha:0];
    [btnCancel setTag:2];
    
	
	
	lblRegister =[[UILabel alloc]initWithFrame:CGRectMake(22, y+100, 200, 40)];
	[lblRegister setText:@"Don't have account ?"];
	[lblRegister setTextColor:[UIColor whiteColor]];
	[lblRegister setBackgroundColor:[UIColor clearColor]];
	[lblRegister setHidden:YES];
	[lblRegister setAlpha:0];
	[self.view addSubview:lblRegister];
	
	btnRegister = [UIButton buttonWithType:UIButtonTypeCustom];
	[btnRegister addTarget:self action:@selector(btnRegisterPressed) forControlEvents:UIControlEventTouchUpInside];
	[btnRegister setFrame:CGRectMake(184, y+100, 100, 40)];
	[btnRegister setTitle:@"Click here" forState:UIControlStateNormal];
	[btnRegister setTintColor:[UIColor blueColor]];
	[btnRegister setHidden:YES];
	[btnRegister setAlpha:0];
	[self.view addSubview:btnRegister];
	
    
	line1 =[[UIView alloc]initWithFrame:CGRectMake(194, y+130, 80, 1)];
	[line1 setBackgroundColor:[UIColor whiteColor]];
	[line1	setAlpha:0];
	[line1	setHidden:YES];
	[self.view addSubview:line1];
	
	
    //++++++++++++++++++++++++//
    //----animation----------//
    //++++++++++++++++++++++//
    
    [UIView animateWithDuration:2.5 animations:^{
        [btnFacebook setAlpha:1];
            [UIView animateWithDuration:2.5 animations:^{
                [btnEmail setAlpha:1];
        }];
    }];
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
