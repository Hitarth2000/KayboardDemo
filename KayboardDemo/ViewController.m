//
//  ViewController.m
//  KayboardDemo
//
//  Created by AMS on 28/08/15.
//  Copyright (c) 2015 Hitarth. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
_tool.hidden = TRUE;
}

- (void)viewWillAppear:(BOOL)animated
{

    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidHideNotification object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification * notif)
     {
         _tool.hidden = TRUE;
     }];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidShowNotification object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification * notif)
     {
         _tool.hidden = FALSE;
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickonCancel:(id)sender {
    
    [self.view endEditing:TRUE];
}

- (IBAction)clickonDone:(id)sender {
    [self.view endEditing:TRUE];
}


#pragma mark -
#pragma mark UITextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextField *) textField
{
    textField.inputAccessoryView = _tool;
    [_tool removeFromSuperview];
    [textField becomeFirstResponder];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

@end
