//
//  HeadphoneList.h
//  HeadphoneList
//
//  Created by admin on 9/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Headphone;

@interface HeadphoneList : NSObject

@property (readonly) NSUInteger count;

-(id)initWithDefaultData;
+(id)defaultHeadphones;

-(Headphone *)headphoneAtIndex:(NSUInteger)index;


@end
