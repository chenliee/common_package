#import "ServicePackagePlugin.h"
#if __has_include(<service_package/service_package-Swift.h>)
#import <service_package/service_package-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "service_package-Swift.h"
#endif

@implementation ServicePackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftServicePackagePlugin registerWithRegistrar:registrar];
}
@end
