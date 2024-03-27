//
//  RXTestService.m
//  RXTestSDK
//
//  Created by wangliang on 2024/3/27.
//

#import "RXTestService.h"

@implementation RXTestService

static RXTestService *shareSDK = nil;
static dispatch_once_t onceToken;
+ (instancetype)shareSDK
{
    dispatch_once(&onceToken, ^{
        shareSDK = [[RXTestService alloc] init];
    });
    return shareSDK;
}

- (void)initWithApplication:(UIApplication *)application
{
    NSLog(@"RX Test SDK init");
}

- (void)login
{
    NSLog(@"RX Test SDK login");
}

- (void)share 
{
    NSLog(@"RX Test SDK share");
}

-(void)pay
{
    NSLog(@"RX Test SDK pay");
}

@end
