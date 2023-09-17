#import <Foundation/Foundation.h>

@interface Package : NSObject
- (NSString *)architecture;
@end

%hook Package

- (BOOL)unfiltered {
	return [[self architecture] isEqualToString:@"iphoneos-arm64"] ? NO : %orig;
}

%end