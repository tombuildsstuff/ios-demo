//
//  TestViewController.m
//  Test
//
//  Created by Tom Harvey on 27/01/2014.
//  Copyright (c) 2014 WeBuildStuff. All rights reserved.
//

#import "TestViewController.h"
#import "ColorOptions.h"

@interface TestViewController ()

@end

@implementation TestViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismiss)];
}

- (IBAction)radioButtonSelected:(id)sender
{
    ColorOptions selectedOption = (ColorOptions)(int)((UIButton*)sender).tag;
    
    for (UIButton* button in self.radioButtons)
    {
        NSInteger index = (NSInteger)((UIButton*)sender).tag;
        ColorOptions option = (ColorOptions)index;
        [button setSelected:option == selectedOption];
    }
    
    self.selectedOption.text = [NSString stringWithFormat:@"%i colour", selectedOption];
}

-(void)dismiss
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
