//
//  Headphone.m
//  HeadphoneList
//
//  Created by admin on 9/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "Headphone.h"

static const NSString *kName = @"name";
static const NSString *kMaker = @"maker";
static const NSString *kPhotoName = @"photo";
static const NSString *kDescriptionText = @"description";

@implementation Headphone
- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.name = dict[kName];
        self.maker = dict[kMaker];
        self.photoName = dict[kPhotoName];
        self.descriptionText = dict[kDescriptionText];
    }
    return self;
}
@end
