//
//  DetailViewController.m
//  MCMS
//
//  Created by Kristen L. Fisher on 5/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *theCreaturesName;
@property (weak, nonatomic) IBOutlet UITextView *theDescription;
@property Boolean buttonPressed;
@property (weak, nonatomic) IBOutlet UITextField *editTextField;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation DetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.theCreaturesName.text = self.creature.name;
    self.theDescription.text = self.creature.description;

    self.buttonPressed = YES;

    [self.editTextField setHidden:YES];

    self.image.image = self.creature.theCreaturesImage;





    
}
- (IBAction)onEditButtonTapped:(id)sender
{
    if (self.buttonPressed == YES) {
        [sender setTitle:@"Done" forState:(UIControlStateNormal)];

        [self.editTextField setHidden:NO];
        self.buttonPressed = NO;

        self.editTextField.text = self.creature.name;
    }
    else    {
        [sender setTitle:@"Edit" forState:(UIControlStateNormal)];

        self.buttonPressed = YES;
        [self.editTextField setHidden:YES];
        [self.editTextField resignFirstResponder];

        self.theCreaturesName.text = self.editTextField.text;
        self.creature.name = self.editTextField.text;

    }
}




@end
