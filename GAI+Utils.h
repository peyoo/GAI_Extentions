//
//  GAI+Utils.h
//  PinBoard
//
//  Created by 彭 勇 on 13-3-8.
//  Copyright (c) 2013年 ÂΩ≠Âãá. All rights reserved.
//

#import "GAI.h"

@interface GAI (Utils)

+(void)trackError:(NSError*)error;

//+(void)trackException:(NSException*)exception;
+(void)track:(NSString*)action error:(NSError*)error;

+(void)trackView:(NSString*)view;

+(void)trackEvent:(NSString*)category action:(NSString*)action label:(NSString*)label value:(NSNumber*)value;

+(void)trackEvent:(NSString*)category action:(NSString*)action label:(NSString*)label;

+(void)trackEvent:(NSString*)category action:(NSString*)action;



@end
