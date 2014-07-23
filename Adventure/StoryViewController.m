//
//  StoryViewController.m
//  Adventure
//
//  Created by Alejandro Tami on 22/07/14.
//  Copyright (c) 2014 Alejandro Tami. All rights reserved.
//

#import "StoryViewController.h"

@interface StoryViewController ()

@property (weak, nonatomic) IBOutlet UITextView *storyView;
@property (weak, nonatomic)  NSString *tempStringView;

@end

@implementation StoryViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    self.tempStringView = self.storyView.text;
    self.storyView.text = @"";
    
    self.storyView.text =
    [_tempStringView stringByReplacingOccurrencesOfString:@"Ryan" withString:self.protagonistName];
    

}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIButton *button = (UIButton*)sender;
    UINavigationController * vc = (UINavigationController*) segue.destinationViewController;
    
    vc.navigationItem.title  = button.currentTitle;
    ((StoryViewController*)vc).protagonistName = self.protagonistName;
}

@end
