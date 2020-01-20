package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import rocks.biessek.fluttercountrypicker.FlutterCountryPickerPlugin;
import com.sahdeepsingh.liquid_swipe.LiquidSwipePlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterCountryPickerPlugin.registerWith(registry.registrarFor("rocks.biessek.fluttercountrypicker.FlutterCountryPickerPlugin"));
    LiquidSwipePlugin.registerWith(registry.registrarFor("com.sahdeepsingh.liquid_swipe.LiquidSwipePlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
