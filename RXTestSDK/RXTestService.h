//
//  RXTestService.h
//  RXTestSDK
//
//  Created by wangliang on 2024/3/27.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RXTestService : NSObject

+ (instancetype)shareSDK;

- (void)initWithApplication: (UIApplication *) application;

- (void)login;

- (void)share;

- (void)pay;

@end

NS_ASSUME_NONNULL_END
