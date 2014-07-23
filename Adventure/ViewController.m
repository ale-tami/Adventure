//
//  ViewController.m
//  Adventure
//
//  Created by Alejandro Tami on 22/07/14.
//  Copyright (c) 2014 Alejandro Tami. All rights reserved.
//

#import "ViewController.h"
#import "StoryViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *protagonistField;
@property (weak, nonatomic) IBOutlet UILabel *origin;

@end

@implementation ViewController

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
    
    ((StoryViewController*)vc).protagonistName = self.protagonistField.text;
    

}

- (IBAction)startOver:(UIStoryboardSegue *) sender
{
    UINavigationController * vc = (UINavigationController*) sender.sourceViewController;

    self.origin.text = vc.navigationItem.title;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
