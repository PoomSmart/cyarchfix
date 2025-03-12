#import <Foundation/Foundation.h>

@interface Package : NSObject
- (NSString *)architecture;
@end

%hook Package

- (BOOL)unfiltered {
    NSString *arch = [self architecture];
    return [arch hasSuffix:@"-arm64"] || [arch hasSuffix:@"-arm64e"] ? NO : %orig;
}

%end