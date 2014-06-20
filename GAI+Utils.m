//
//  GAI+Utils.m
//  PinBoard
//
//  Created by 彭 勇 on 13-3-8.
//  Copyright (c) 2013年 ÂΩ≠Âãá. All rights reserved.
//

#import "GAI+Utils.h"
#import <GAIFields.h>
#import <GAIDictionaryBuilder.h>

@implementation GAI (Utils)



+(void)trackError:(NSError*)error{
    if (error) {
        NSLog(@"error:%@",error);
        [[[GAI sharedInstance] defaultTracker ] send:[[GAIDictionaryBuilder createExceptionWithDescription:[error description] withFatal:NO] build]];
    }

}

+(void)trackException:(NSException*)exception{
//    if (exception) {
//        NSLog(@"exception:%@",exception);
//        [[[GAI sharedInstance] defaultTracker] send:[ [GAIDictionaryBuilder
//                                                createExceptionWithDescription:exception.userInfo]
//    }
}

+(void)trackView:(NSString*)view{
    [[[GAI sharedInstance] defaultTracker] set:kGAIScreenName value:view];
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]];
}


+(void)trackEvent:(NSString*)category action:(NSString*)action label:(NSString*)label value:(NSNumber*)value{
    [[[GAI  sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:category                                                                                        action:action label:label value:value] build]];
}
+(void)track:(NSString*)action error:(NSError*)error{
    if (error) {
        NSLog(@"error:%@",error);
        [self trackEvent:@"error" action:action label:[error description] value:0];
    }
}

+(void)trackEvent:(NSString*)category action:(NSString*)action label:(NSString*)label{
    [self trackEvent:category action:action label:label value:0];
}

+(void)trackEvent:(NSString*)category action:(NSString*)action{
    [self trackEvent:category action:action label:nil value:0];
}



@end
