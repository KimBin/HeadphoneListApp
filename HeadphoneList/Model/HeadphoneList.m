//
//  HeadphoneList.m
//  HeadphoneList
//
//  Created by admin on 9/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "HeadphoneList.h"
#import "Headphone.h"

@implementation HeadphoneList {
    NSArray *headphones;
}

-(Headphone *)headphoneAtIndex:(NSUInteger)index {
    return headphones[index];
}

-(NSUInteger)count {
    return headphones.count;
}

-(void)setupData {
    NSArray *list = @[@{@"name":@"TH900", @"maker":@"Fostex",
                        @"photo":@"th900.jpg", @"description":@"qwertyuiwertyuiwerty"},
                      @{@"name":@"K812", @"maker":@"AKG",
                        @"photo":@"k812.jpg", @"description":@"asfghsdfghdfghdfgh"}];
    
    NSMutableArray *tmp = [NSMutableArray array];
    for (NSDictionary *dict in list) {
        [tmp addObject:[[Headphone alloc] initWithDictionary:dict]];
    }
    headphones = [NSArray arrayWithArray:tmp];
}

-(id)initWithDefaultData {
    self = [super init];
    if (self) {
        [self setupData];
    }
    return self;
}

+(id)defaultHeadphones {
    return [[[self class] alloc] initWithDefaultData];
}

@end
