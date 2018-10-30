//
//  FIREntryDetailViewController.h
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FIREntryModel.h"

@class FIREntryModel;

NS_ASSUME_NONNULL_BEGIN

@interface FIREntryDetailViewController : UIViewController <UITextFieldDelegate>

@property(nonatomic, strong, nonnull) FIREntryModel *entry;

@end

NS_ASSUME_NONNULL_END
