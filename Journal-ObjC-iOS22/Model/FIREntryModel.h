//
//  FIREntryModel.h
//  Journal-ObjC-iOS22
//
//  Created by Ivan Ramirez on 10/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FIREntryModel : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* textBody;
@property (nonatomic, copy) NSDate* timeStamp;

// MARK: - Init

-(instancetype)initWithTitle: (NSString *)title textBody:(NSString *)textBody;

- (NSString *)dateAsString;
@end

NS_ASSUME_NONNULL_END
