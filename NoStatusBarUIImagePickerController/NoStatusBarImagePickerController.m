//
//  NoStatusBarImagePickerController.m
//  NoStatusBarUIImagePickerController
//
//  Created by Peter Sobkowski on 2014-03-11.
//  Taken from: http://stackoverflow.com/a/19200027/1549072
//

#import "NoStatusBarImagePickerController.h"

@implementation NoStatusBarImagePickerController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (UIViewController *)childViewControllerForStatusBarHidden
{
    return nil;
}

@end
