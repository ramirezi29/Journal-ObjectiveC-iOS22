//
//  FIREntryTableViewController.h
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FIREntryModel;

NS_ASSUME_NONNULL_BEGIN

@interface FIREntryTableViewController : UITableViewController

@property (nonatomic, strong) FIREntryModel *journal;

@end

NS_ASSUME_NONNULL_END
