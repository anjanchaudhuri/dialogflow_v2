#import "DialogflowV2Plugin.h"
#if __has_include(<dialogflow_v2/dialogflow_v2-Swift.h>)
#import <dialogflow_v2/dialogflow_v2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dialogflow_v2-Swift.h"
#endif

@implementation DialogflowV2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDialogflowV2Plugin registerWithRegistrar:registrar];
}
@end
