//
//  FIREntryModel.m
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import "FIREntryModel.h"

@implementation FIREntryModel

- (instancetype)initWithTitle:(NSString *)title textBody:(NSString *)textBody
{
    self = [super init];
    if (self) {
        _title = title;
        _textBody = textBody;
        _timeStamp = [NSDate date];
    }
    return self;
}

- (NSString *)dateAsString
{
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"hh:mm a 'on' MMMM dd, yyyy";
    return [dateFormatter stringFromDate:self.timeStamp];
}

@end
