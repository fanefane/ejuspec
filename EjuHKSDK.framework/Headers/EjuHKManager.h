//
//  EjuHKManager.h
//  EjuHKSDK
//
//  Created by Fane on 2019/10/30.
//

///version1.4.3

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    EjuHKModuleTypeReport,//报事报修
    EjuHKModuleTypeComplaint,//投诉表扬
} EjuHKModuleType;

NS_ASSUME_NONNULL_BEGIN

@interface EjuHKManager : NSObject

/// sdk初始化配置
/// @param channelId  渠道id 【选填】
/// @param themeColor 主题色 【选填】
+ (void)globalConfigWithChannelId:(NSString * __nullable)channelId themeColor:(NSString *  __nullable)themeColor;

/// 模块跳转
/// @param module 模块类型,默认报事报修
/// @param accessToken 用户token 【必填】
/// @param mbId 用户id           【必填】
/// @param communityId 小区id    【必填】
+ (void)pushToModuleWithType:(EjuHKModuleType)module
                 accessToken:(NSString* __nonnull)accessToken
                    memberId:(NSString* __nonnull)mbId
                 communityId:(NSString* __nonnull)communityId;

+ (void)loginInvalid:(void(^)(void))loginInvalidBlock;

@end

NS_ASSUME_NONNULL_END
