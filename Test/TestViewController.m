//
//  TestViewController.m
//  Test
//
//  Created by Tom Harvey on 27/01/2014.
//  Copyright (c) 2014 WeBuildStuff. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

// values set to avoid '0' as default since that is the tag default value
// enum used to avoid magic tag numbers (ie. for clarity)
enum
{
    blue = 1,
    red = 2,
    yellow  = 3
} typedef ColorOptions;

- (IBAction)radioButtonSelected:(id)sender
{
    ColorOptions selectedOption = (ColorOptions)((UIButton*)sender).tag;
    
    for (UIButton* button in self.radioButtons)
    {
        ColorOptions option = (ColorOptions)((UIButton*)sender).tag;
        [button setSelected:option == selectedOption];
    }
    
    self.selectedOption.text = [NSString stringWithFormat:@"%@ colour", selectedOption];
}

@end
