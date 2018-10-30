//
//  FIREntryController.m
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import "FIREntryController.h"
#import "FIREntryModel.h"

@implementation FIREntryController

+(FIREntryController *)shared
{
    static FIREntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [FIREntryController new];
    });
    return shared;
}

-(instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc]init];
        
    }
    return self;
}

// MARK: - funcs
-(void)addEntryTitle:(NSString *)title textBody:(NSString *)textBody
{
    FIREntryModel *entry =[[FIREntryModel new] initWithTitle:title textBody:textBody];
    [[FIREntryController shared].entries addObject:entry];
}

-(void)removeEntry:(FIREntryModel *)entry
{
    NSUInteger index = [[FIREntryController shared].entries indexOfObject:entry];
    [[FIREntryController shared].entries removeObjectAtIndex:index];
}

-(void)updateEntry:(FIREntryModel *)entry newTitle:(NSString *)newTitle newTextBody:(NSString *)newTextBody
{
    entry.title = newTitle;
    entry.textBody = newTextBody;
    entry.timeStamp = [[NSDate alloc]init];
}

@end
