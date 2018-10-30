//
//  FIREntryTableViewCell.m
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import "FIREntryTableViewCell.h"
#import "FIREntryModel.h"

@interface FIREntryTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;

@end

@implementation FIREntryTableViewCell


-(void)setEntry:(FIREntryModel *)entry
{
    _entry = entry;
    [self updateViews:entry];
}

-(void)updateViews: (FIREntryModel *)entry
{
    self.titleLabel.text = entry.title;
    self.timeStampLabel.text = entry.dateAsString;    
}

@end
