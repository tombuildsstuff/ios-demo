//
//  TestViewController.h
//  Test
//
//  Created by Tom Harvey on 27/01/2014.
//  Copyright (c) 2014 WeBuildStuff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController

//collection used to group related controls and avoid clutter + easily iterate
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *radioButtons;

//when any button is clicked this action is raised

- (IBAction)radioButtonSelected:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *selectedOption;


@end
