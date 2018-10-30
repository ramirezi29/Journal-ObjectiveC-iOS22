//
//  FIREntryController.h
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIREntryModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FIREntryController : NSObject

// MARK: - Fuente De Verdad

@property (nonatomic) NSMutableArray *entries;

// MARK: - Shared Instance
+(FIREntryController *)shared;

// MARK: - funcs
-(void)addEntryTitle:(NSString *)title textBody:(NSString *)textBody;
-(void)removeEntry:(FIREntryModel *)entry;
-(void)updateEntry:(FIREntryModel *)entry newTitle:(NSString *)newTitle newTextBody:(NSString *)newTextBody;

@end

NS_ASSUME_NONNULL_END
