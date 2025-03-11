#import <Foundation/Foundation.h>

@interface Package : NSObject
- (NSString *)architecture;
@end

%hook Package

- (BOOL)unfiltered {
    NSString *arch = [self architecture];
    return [arch isEqualToString:@"iphoneos-arm64"] || [arch isEqualToString:@"iphoneos-arm64e"] || [arch isEqualToString:@"appletvos-arm64"] ? NO : %orig;
}

%end