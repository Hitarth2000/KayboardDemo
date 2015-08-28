//
//  ViewController.h
//  KayboardDemo
//
//  Created by AMS on 28/08/15.
//  Copyright (c) 2015 Hitarth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UIToolbar *tool;
- (IBAction)clickonCancel:(id)sender;
- (IBAction)clickonDone:(id)sender;

@end

