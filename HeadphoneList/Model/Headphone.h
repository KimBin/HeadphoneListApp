//
//  Headphone.h
//  HeadphoneList
//
//  Created by admin on 9/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Headphone : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *maker;
@property (strong, nonatomic) NSString *photoName;
@property (strong, nonatomic) NSString *descriptionText;

- (id)initWithDictionary:(NSDictionary *)dict;
@end
