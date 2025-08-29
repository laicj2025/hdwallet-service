#import "HdwalletServicePlugin.h"
#if __has_include(<hdwallet_service/hdwallet_service-Swift.h>)
#import <hdwallet_service/hdwallet_service-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hdwallet_service-Swift.h"
#endif

@implementation HdwalletServicePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHdwalletServicePlugin registerWithRegistrar:registrar];
}
@end
