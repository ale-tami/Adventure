//
//  RiddleViewController.m
//  Adventure
//
//  Created by Alejandro Tami on 23/07/14.
//  Copyright (c) 2014 Alejandro Tami. All rights reserved.
//

#import "RiddleViewController.h"

@interface RiddleViewController ()
@property (weak, nonatomic) IBOutlet UITextView *storyTextView;
@property (weak, nonatomic) IBOutlet UIButton *storyButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *riddleSegment;
@property (weak, nonatomic) IBOutlet UITextView *riddleTextView;

@end

@implementation RiddleViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.riddleSegment.selectedSegmentIndex = -1;
}



- (IBAction)riddleTouched:(id)sender {

    UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
    if (segmentedControl.selectedSegmentIndex == 2) {
        
        self.storyTextView.alpha = 1.0;
        self.storyButton.alpha = 1.0;
        
        self.riddleSegment.alpha = 0.0;
        self.riddleTextView.alpha = 0.0;
        
    }
   
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
    
    
    self.storyTextView.alpha = 0.0;
    self.storyButton.alpha = 0.0;
    
}

@end
