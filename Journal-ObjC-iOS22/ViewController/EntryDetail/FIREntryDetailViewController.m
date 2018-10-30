//
//  FIREntryDetailViewController.m
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import "FIREntryDetailViewController.h"
#import "FIREntryModel.h"
#import "FIREntryController.h"
#import "FIREntryTableViewCell.h"

@interface FIREntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textBodyTextField;

@end

@implementation FIREntryDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleTextField.delegate = self;
    [self updateViews];
}

-(void)updateViews
{
    self.titleTextField.text = self.entry.title;
    self.textBodyTextField.text = self.entry.textBody;
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if (_entry.title == nil && _entry.textBody == nil)
    {
        [[FIREntryController shared] addEntryTitle:self.titleTextField.text textBody:self.textBodyTextField.text];
    } else {
        [[FIREntryController shared] updateEntry:self.entry newTitle:self.titleTextField.text newTextBody:self.textBodyTextField.text];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.textBodyTextField.text = @"";
    self.titleTextField.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
