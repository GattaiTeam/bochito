//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_country_picker/FlutterCountryPickerPlugin.h>)
#import <flutter_country_picker/FlutterCountryPickerPlugin.h>
#else
@import flutter_country_picker;
#endif

#if __has_include(<image_picker/FLTImagePickerPlugin.h>)
#import <image_picker/FLTImagePickerPlugin.h>
#else
@import image_picker;
#endif

#if __has_include(<liquid_swipe/LiquidSwipePlugin.h>)
#import <liquid_swipe/LiquidSwipePlugin.h>
#else
@import liquid_swipe;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterCountryPickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterCountryPickerPlugin"]];
  [FLTImagePickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTImagePickerPlugin"]];
  [LiquidSwipePlugin registerWithRegistrar:[registry registrarForPlugin:@"LiquidSwipePlugin"]];
}

@end
