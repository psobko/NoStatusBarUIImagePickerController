//
//  ViewController.m
//  NoStatusBarUIImagePickerController
//
//  Created by Peter Sobkowski on 2014-03-11.
//  Copyright (c) 2014 psobko. All rights reserved.
//

#import "ViewController.h"
#import "NoStatusBarImagePickerController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Actions

- (IBAction)launchWithStatusBarTapped:(id)sender
{
    [self presentImagePicker:[[UIImagePickerController alloc] init]];
}

- (IBAction)launchWithoutStatusBarTapped:(id)sender
{
    [self presentImagePicker:[[NoStatusBarImagePickerController alloc] init]];
}

#pragma mark - Private

-(void)presentImagePicker:(UIImagePickerController*)imagePicker
{
    if([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera] && imagePicker)
    {
		imagePicker.allowsEditing = YES;
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        [self presentViewController:imagePicker
                           animated:YES
                         completion:nil];
    }
    else
    {
        [[[UIAlertView alloc] initWithTitle:@"Error"
                                    message:@"Could not access camera"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
}

@end
